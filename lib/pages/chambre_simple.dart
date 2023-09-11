import 'package:flutter/material.dart';

class ChambreSimpleRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chambre Simple'),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/chambre/chambre1.jpg'), // Remplacez le chemin par votre image
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Chambre Simple',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Une chambre simple est un espace confortable pour une personne avec une vue magnifique sur la ville.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}