import 'package:flutter/material.dart';
import 'package:societe_immobiliere/pages/appartement.dart';
import 'package:societe_immobiliere/pages/chambre_simple.dart';
import 'package:societe_immobiliere/pages/studio.dart';
import 'package:societe_immobiliere/pages/villa.dart';

class HabitantPage extends StatelessWidget {
  const HabitantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Société Immobilière"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Text('Menu de Navigation'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Chambre simple'),
              onTap: () {
                Navigator.pop(context); // Ferme le tiroir
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChambreSimpleRoute()));
              },
            ),
            ListTile(
              title: Text('Appartement'),
              onTap: () {
                Navigator.pop(context); // Ferme le tiroir
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AppartementRoute()));
              },
            ),
            ListTile(
              title: Text('Studio'),
              onTap: () {
                Navigator.pop(context); // Ferme le tiroir
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StudioRoute()));
              },
            ),
            ListTile(
              title: Text('Villa'),
              onTap: () {
                Navigator.pop(context); // Ferme le tiroir
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VillaRoute()));
              },
            ),
            ListTile(
              title: Text('Déconnecter'),
              onTap: () {
                Navigator.pop(context); // Ferme le tiroir
              },
            ),
          ],
        ),
      ),
    );
  }
}
