import 'package:flutter/material.dart';
import 'package:kimirina_app/screens/tabs/feeds.dart';
import 'package:kimirina_app/utils/colors.dart';
import 'package:kimirina_app/_routes/routes.dart';

class SigueTratamientoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "Estoy siguiendo un tratamiento ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 35.0,
        ),
      ),
    );


    return Scaffold(
      appBar: AppBar(),
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
                            Image.asset('assets/images/tratamiento.jpg'),
                            Text("Felicidades!!!, sigue asi y cuida mucho de tu salud",)
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
                    Text('No abandones tu tratamineto pues este es muy importante para ti',),  
                    FlatButton(
                      color: primaryColor,
                      onPressed: () {
                        /*...*/
                        Navigator.of(context)
                        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new FeedsPage();
                      }));
                      },
                      child: Text(
                        "Finalizar",style: TextStyle(color: Colors.white)
                      ),
                    ),
                    FlatButton(
                      color: primaryColor,
                      onPressed: () => Navigator.pushNamed(context, chatDetailsViewRoute, arguments:1),
                      child: Text(
                        "Contactanos",style: TextStyle(color: Colors.white)
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