import 'package:flutter/material.dart';
import 'package:kimirina_app/_routes/routes.dart';
import 'package:kimirina_app/screens/tabs/feeds.dart';

class AbandonoTratamientoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "Abandone un tratamiento ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 35.0,
        ),
      ),
    );


    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.withOpacity(0.1),
          padding: EdgeInsets.only(top: 40.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pageTitle,
                     Card(
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/images/abandono.jpg'),
                            Text("Deberias reanudar tu tratamiento")
                          ],
                        ),
                      ),
                     ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Recomendaciones:', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15.0,
                        ),
                      ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('No olvides que el seguir con tu tratamiento previene el deterioro de tu salud'),  
                    FlatButton(
                      color: Colors.orange,
                      onPressed: () {
                        /*...*/
                        Navigator.of(context)
                        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new FeedsPage();
                      }));
                      },
                      child: Text(
                        "Finalizar",
                      ),
                    ),
                    FlatButton(
                      color: Colors.yellow,
                      onPressed: () {
                        /*...*/
                        Navigator.of(context)
                        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new FeedsPage();
                      }));
                      },
                      child: Text(
                        "Deseas hablar con un brigadista?",
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  
  }
}