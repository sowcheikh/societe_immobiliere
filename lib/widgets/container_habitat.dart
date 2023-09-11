import 'package:flutter/material.dart';
import 'package:societe_immobiliere/models/habitat.model.dart';

class ContainerHabitat extends StatelessWidget {
  final HabitatModel habitatModel;
  const ContainerHabitat({Key? key, required this.habitatModel }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.all(16),
      color: Colors.blue,
      padding: EdgeInsets.all(16),
      child: Image.asset(habitatModel.urlImage),
    );
  }
}
