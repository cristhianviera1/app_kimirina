import 'package:flutter/material.dart';

class RiesgoPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "Te Recomendamos...",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.orange,
          fontSize: 30.0,
        ),
      ),
    );


    return new Scaffold(
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              pageTitle,
              new Card(
                 child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: CircleAvatar(
    backgroundImage: AssetImage('assets/images/woman1.jpg'),
  ),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('BUY TICKETS'),
                onPressed: () { /* ... */ },
              ),
              FlatButton(
                child: const Text('LISTEN'),
                onPressed: () { /* ... */ },
              ),
            ],
          ),
        ],
      ),
              ),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Hello World'),
                      new Text('How are you?')
                    ],
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Hello World'),
                      new Text('How are you?')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}