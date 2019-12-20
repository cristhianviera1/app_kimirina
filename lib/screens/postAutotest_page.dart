import 'package:flutter/material.dart';
import 'package:kimirina_app/_routes/routes.dart';
import 'package:kimirina_app/utils/colors.dart';

class PostAutoTestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PostAutoTestPage();
  }
}

class _PostAutoTestPage extends State<PostAutoTestPage> {
  @override
  Widget build(BuildContext context) {
    final _card1 = Card(
      child: Padding(
        padding: EdgeInsets.only(top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
        child: ExpansionTile(
          title: Text(
            'Indicaciones',
            style: styleTextQuestions,
          ),
          children: <Widget>[
            Image.asset("assets/images/temperature.png"),
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
          title: Text(
            'Modo de uso',
            style: styleTextQuestions,
          ),
          children: <Widget>[
            Image.asset("assets/images/uso.jpg"),
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
          title: Text(
            'Resultado',
            style: styleTextQuestions,
          ),
          initiallyExpanded: true,
          children: <Widget>[
            Image.asset("assets/images/resultado.png"),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.'),
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed(autotestViewRoute);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            )
          ],
        ),
      ),
    );
    final _card4 = Card(
      child: Padding(
        padding: EdgeInsets.only(top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
        child: ExpansionTile(
          title: Text(
            'Forma correcta de desechar',
            style: styleTextQuestions,
          ),
          children: <Widget>[
            Image.asset("assets/images/abandono.jpg"),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.'),
          ],
        ),
      ),
    );

    final _buttonChat = MaterialButton(
      onPressed: () => Navigator.of(context).pushNamed(postAutoTest),
      child: Text(
        '¿Ya lo adquiriste?',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[_card1, _card2,_card3, _card4,_buttonChat],
        ),
      ),
    );
  }
}
