import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String animationName;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.animationName,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/animations/Logo.flr',
    animationName: 'Untitled',
    title: 'Kimirina',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
  ),
  Slide(
    imageUrl: 'assets/animations/handShake.flr',
    animationName: 'Untitled',
    title: 'Confianza',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
  ),
  Slide(
    imageUrl: 'assets/animations/Lock_Animation.flr',
    animationName: 'Untitled',
    title: 'Confidencialidad',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
  ),
];
