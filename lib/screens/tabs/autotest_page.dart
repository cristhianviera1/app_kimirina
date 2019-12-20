import 'package:flutter/material.dart';
import '../../_routes/routes.dart';
import 'package:kimirina_app/utils/colors.dart';


class AutotestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _cardTipo1() {
      final card = Container(
        // clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
             ListTile(
            title: Text('¿Donde nos puedes encontrar?',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Colors.black)),
            
          ),
            FadeInImage(
              image: AssetImage('assets/images/mapa.jpg'),
              placeholder: AssetImage('assets/animations/logo.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300.0,
              fit: BoxFit.cover,
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Es una prueba para las personas que quieran saber si son portadoras del VIH.Es una prueba para las personas que quieran saber si son portadoras del VIH.Es una prueba para las personas que quieran saber si son portadoras del VIH.Es una prueba para las personas que quieran saber si son portadoras del VIH.Es una prueba para las personas que quieran saber si son portadoras del VIH.Es una prueba para las personas que quieran saber si son portadoras del VIH.Es una prueba para las personas que quieran saber si son portadoras del VIH. '))
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
final submitBtn = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(riesgoViewRoute),
            child: Text(
              '¿Ya lo adquiriste?',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(''),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              child: new Text('Autotest',
                  style: new TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey)),
            ),
          ),
          SizedBox(height: 30.0),
          _cardTipo1(),
          submitBtn,
          
        ],
      ),
    );
  }
}
