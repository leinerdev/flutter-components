import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardSoccerPlayer extends StatelessWidget {
  const CustomCardSoccerPlayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Soy un título'),
          subtitle: Text('Esta es una descripción'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              )
            ],
          ),
        )
      ]),
    );
  }
}
