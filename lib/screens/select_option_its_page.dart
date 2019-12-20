import 'package:flutter/material.dart';
import 'package:kimirina_app/_routes/routes.dart';
import 'package:kimirina_app/utils/colors.dart';

class SelectOptionItsPage extends StatefulWidget {
  @override
  _SelectOptionItsPageState createState() => _SelectOptionItsPageState();
}

class _SelectOptionItsPageState extends State<SelectOptionItsPage> {
  @override
  Widget build(BuildContext context) {
    final _cardTipo1 = Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.info, color: secondaryColor),
            title: Text('Actualmente tienes una ITS?', style: styleTextTitleCards),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text(
                  'Saber más',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: (){
                  Navigator.of(context).pushNamed(itsActualActionViewRoute);
                },
              )
            ],
          )
        ],
      ),
    );

    final _cardTipo2 = Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.info, color: secondaryColor),
            title: Text(
              '¿Deseas saber si posees una ITS?',
              style: styleTextTitleCards,
            ),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(riskFormRoute);
                },
                
                child: Text(
                  'Saber más',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );

    final _cardTipo3 = Container(
      child: Column(
        children: <Widget>[
          Image.asset('assets/animations/logo.gif'),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Oportunidad de vida',style: TextStyle(color: primaryColor),))
        ],
      ),
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
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo3,
          SizedBox(height: 30.0),
          _cardTipo2,
          SizedBox(height: 30.0),
          _cardTipo1,
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
