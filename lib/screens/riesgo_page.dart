import 'package:flutter/material.dart';
import 'package:kimirina_app/_routes/routes.dart';
import 'package:kimirina_app/utils/colors.dart';

class RiesgoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 Widget _cardTipo1() {

     final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Autotest',style: styleTextTitleCards),
            subtitle: Text('Es una prueba para las personas que quieran saber si son portadoras del VIH.'),
          ),
          FadeInImage(
            image: AssetImage('assets/images/autotest.png'),
            placeholder: AssetImage('assets/animations/logo.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),

    
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver más...'),
                 onPressed: () => Navigator.pushNamed(context, autotestViewRoute),
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
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
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
            title: Text('Prueba Comunitaria',style: styleTextTitleCards),
            subtitle: Text('Es una prueba para las personas que quieran saber si son portadoras del VIH.'),
          ),
          FadeInImage(
            image: AssetImage('assets/images/comunitaria.jpg'),
            placeholder: AssetImage('assets/animations/logo.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),

    
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver más...'),
                onPressed: () => Navigator.pushNamed(context, pruebaComunitariaViewRoute),
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
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );

  }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Posees un porcentaje de riesgo'),
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
