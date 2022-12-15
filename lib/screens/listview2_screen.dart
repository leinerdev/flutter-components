import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final soccerPlayers = const [
    'Lionel Messi',
    'Ronaldinho',
    'Cristiano Ronaldo',
    'Neymar'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('The best soccer players - 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(soccerPlayers[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo,
                  ),
                  onTap: () {
                    final sp = soccerPlayers[index];
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: soccerPlayers.length));
  }
}
