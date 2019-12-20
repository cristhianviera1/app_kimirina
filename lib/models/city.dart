import 'package:flutter/material.dart';
class City {
  int id;
  String name;
 
  City(this.id, this.name);
 
  static List<City> getCities() {
    return <City>[
      City(1, 'Quito'),
      City(2, 'Guayaquil'),
      City(3, 'Cuenca'),
      City(4, 'Esmeraldas'),
      City(5, 'Portoviejo'),
      City(6, 'Machala'),
    ];
  }
}