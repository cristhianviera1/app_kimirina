import 'package:flutter/material.dart';
import 'package:kimirina_app/theme.dart';
import '_routes/router.dart' as router;
import '_routes/routes.dart';

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kimirina App",
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      onGenerateRoute: router.generateRoute,
      initialRoute: landingViewRoute,
    );
  }

}