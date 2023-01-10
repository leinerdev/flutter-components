import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Título'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Título'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //   primary: Colors.indigo,
            //   shape: StadiumBorder(),
            //   elevation: 0
            // ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Mostrar alerta',
                style: TextStyle(fontSize: 20),
              ),
            ),
            // onPressed: () => displayDialogAndroid(context),
            onPressed: () => Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(context)),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
