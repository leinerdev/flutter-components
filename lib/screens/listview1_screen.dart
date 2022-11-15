import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final soccerPlayers = const [
    'Lionel Messi',
    'Ronaldinho',
    'Cristiano Ronaldo',
    'Neymar'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('The best soccer players'),
        ),
        body: ListView(
          children: [
            ...soccerPlayers.map((sp) => ListTile(
                  title: Text(sp),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ))
          ],
        ));
  }
}
