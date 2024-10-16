import 'package:flutter/material.dart';
import 'routes.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String texto = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Texto recibido: $texto',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.thirdScreen,
                  arguments: texto,
                );
              },
              child: Text('Ir a la Tercera Pantalla'),
            ),
            SizedBox(height: 20),
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
