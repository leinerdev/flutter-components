import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daemon Targaryen'),
        actions: [
          Container(
            child: CircleAvatar(
              child: const Text('DT'),
              backgroundColor: Colors.indigo[900],
            ),
            margin: const EdgeInsets.only(right: 5),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 200,
          backgroundImage: NetworkImage(
              'https://media.gq.com.mx/photos/62de8da3a3fc70dcc99f7aa5/1:1/w_2000,h_2000,c_limit/daemon.jpg'),
        ),
      ),
    );
  }
}
