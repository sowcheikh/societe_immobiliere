import 'package:flutter/material.dart';
import 'package:societe_immobiliere/widgets/container_habitat.dart';

class StudioRoute extends StatelessWidget {

  const StudioRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Studio'),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
          itemBuilder: (context, index) => ContainerHabitat(habitatModel: ,

          ),
      itemCount: 4,),
    );
  }
}