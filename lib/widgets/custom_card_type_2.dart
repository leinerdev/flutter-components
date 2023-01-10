import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imgUrl;
  final String? titleCard;
  
  const CustomCardType2({Key? key, required this.imgUrl, this.titleCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.6),
      child: Column(
        children: [
          FadeInImage(
              image: NetworkImage(imgUrl),
              placeholder: const AssetImage('assets/loaders/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 400),
          ),

          if (titleCard != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(titleCard!)
            ) 
        ],
      ),
    );
  }
}
