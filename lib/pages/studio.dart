import 'package:flutter/material.dart';
import 'package:societe_immobiliere/models/habitat.model.dart';

class StudioRoute extends StatelessWidget {
  final List<HabitatModel> studioItems = [
    HabitatModel(
        urlImage: 'assets/images/studio/studio1.jpg',
        description:
        "Studio Moderne"),
    HabitatModel(urlImage: 'assets/images/studio/studio2.jpg', description: "Studio Lumineux"),
    HabitatModel(urlImage: 'assets/images/studio/studio3.jpg', description: "Studio Cosy"),
    HabitatModel(urlImage: 'assets/images/studio/studio4.jpg', description: "Studio Urbain"),
  ];
   StudioRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Studio'),
      ),
      body: GridView.builder(
        itemCount: studioItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10), itemBuilder: (context, index) {
        return
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(studioItems[index].urlImage),
        ),
                Text(studioItems[index].description)
              ],
            );
      },),);
  }
}
