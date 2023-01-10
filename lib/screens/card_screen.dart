import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardSoccerPlayer(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                imgUrl:
                    'https://codigoencasa.com/content/images/2021/08/top-18-most-common-angularjs-developer-mistakes-41f9ad303a51db70e4a5204e101e7414.png',
                titleCard: 'Angular, un framework hermoso de JavaScript'),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                imgUrl:
                    'https://blog.digital-pineapple.com.mx/wp-content/uploads/2021/01/0_oZLL-N4dGNlBe4Oh.png',
                titleCard: 'ReactJs, una librería hermosa de JavaScript'),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                imgUrl:
                    'https://segwitz.com/wp-content/uploads/2021/06/vuejs-development-malaysia.jpeg',
                titleCard: 'VueJs, una librería hermosa de JavaScript'),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                imgUrl:
                    'https://repository-images.githubusercontent.com/368917877/cfcc0a17-1843-4713-942b-a122ffc2d72a')
          ],
        ));
  }
}
