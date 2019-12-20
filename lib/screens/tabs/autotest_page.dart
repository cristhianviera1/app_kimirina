import 'package:flutter/material.dart';

class AutotestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(''),
      ),
      body: Column(
        children: <Widget>[
          
          Center(
            child: Container(
              constraints: new BoxConstraints.expand(
                height: 200.0,
              ),
              alignment: Alignment.bottomLeft,
              padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/images/autotest.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: new Text('Autotest',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.blue,
              
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
