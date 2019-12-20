import 'package:flutter/material.dart';
import 'package:kimirina_app/models/feed.dart';
import 'package:kimirina_app/widgets/feed_card2.dart';
import 'package:kimirina_app/widgets/feed_card3.dart';
import 'package:kimirina_app/_routes/routes.dart';

class SelectOptionItsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){


    final userImage = Positioned(
      left: 0,
      top: 15.0,
      child: InkWell(
        onTap: () => Navigator.pushNamed(null, homeViewRoute,
            arguments: null),
        child: Hero(
          tag: AssetImage('assets/images/its1.jpg'),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(14.0),
            child: Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/its1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    final userName = Text(
      'Has contraido vih o alguna infexion sexual',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );

    final descriptionText = Container(
      height: 80.0,
      child: Text(
        'Que pasa MMV!!',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w600,
          fontSize: 14.0,
        ),
      ),
    );

    final cardContent = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        SizedBox(
          height: 5.0,
        ),
        descriptionText
      ],
    );


    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "Selecciona una opción",
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
                
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(14.0),
                        child: Container(
                          padding: EdgeInsets.only(top: 20.0, left: 100.0),
                          height: 150.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: cardContent,
                        ),
                      ),
                    ),
                    userImage
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