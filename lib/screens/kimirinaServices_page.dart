import 'package:flutter/material.dart';
import 'package:kimirina_app/utils/colors.dart';

class KimirinaServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _card1 = Card(
      child: Padding(
        padding: EdgeInsets.only(top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
        child: ExpansionTile(
          title: Text('PrEP',style: styleTextQuestions,),
          children: <Widget>[
            Image.asset("assets/images/prep.jpg"),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.'),
          ],
        ),
      ),
    );
    final _card2 = Card(
      child: Padding(
        padding: EdgeInsets.only(top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
        child: ExpansionTile(
          title: Text('Prueba Comunitaria',style: styleTextQuestions,),
          children: <Widget>[
            Image.asset("assets/images/pruebaComunitaria.jpg"),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.'),
          ],
        ),
      ),
    );
    final _card3 = Card(
      child: Padding(
        padding: EdgeInsets.only(top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
        child: ExpansionTile(
          title: Text('Auto Test',style: styleTextQuestions,),
          initiallyExpanded: true,
          children: <Widget>[
            Image.asset("assets/images/autotest.jpg"),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.'),            
            FloatingActionButton(
              onPressed: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.keyboard_arrow_right),
                ],
              )
              ,
            )
          ],
        ),
      ),
    );
    final _card4 = Card(
      child: Padding(
        padding: EdgeInsets.only(top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
        child: ExpansionTile(
          title: Text('Movilidad Humana',style: styleTextQuestions,),
          children: <Widget>[
            Image.asset("assets/images/movilidadHumana.jpg"),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.'),            
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _card3,
            _card1,
            _card2,
            _card4
          ],
        ),
      ),
    );
  }
}
