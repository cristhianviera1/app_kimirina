import 'package:flutter/material.dart';
import 'package:kimirina_app/utils/colors.dart';
import '../../_routes/routes.dart';

class RiesgoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _cardTipo1() {
      final card = Container(
        // clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Autotest',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey)),
              subtitle: Text(
                  'Es una prueba para las personas que quieran saber si son portadoras del VIH.'),
            ),
            FadeInImage(
              image: AssetImage('assets/images/autotest.png'),
              placeholder: AssetImage('assets/animations/logo.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300.0,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'Ver más...',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, autotestViewRoute),
                ),
              ],
            )
          ],
        ),
      );

      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0, 10.0))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: card,
        ),
      );
    }

    Widget _cardTipo2() {
      final card = Container(
        // clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Prueba Comunitaria',
                  style: TextStyle(fontSize: 30, color: Colors.blue)),
              subtitle: Text(
                  'Es una prueba para las personas que quieran saber si son portadoras del VIH.'),
            ),
            FadeInImage(
              image: AssetImage('assets/images/comunitaria.jpg'),
              placeholder: AssetImage('assets/animations/logo.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300.0,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'Ver más...',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, pruebaComunitariaViewRoute),
                ),
              ],
            )
          ],
        ),
      );

      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0, 10.0))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: card,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
