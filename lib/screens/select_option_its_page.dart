import 'package:flutter/material.dart';
import 'package:kimirina_app/_routes/routes.dart';

import 'its_actual_action.dart';

class SelectOptionItsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){


    final userImage = Positioned(
      left: 0,
      top: 15.0,
      child: InkWell(
        onTap: () => Navigator.pushNamed(null, homeViewRoute),
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
      'Has contraido VIH o alguna infexion sexual',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );

    final cardContent = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        SizedBox(
          height: 5.0,
        ),
        RaisedButton(
        color: Colors.orange,
        onPressed: (){ 
          Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new ItsActualActionPage();
        }));
        },
        child: Text("Si lo tengo"), 
        )
      ],
    );


    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "Selecciona una opción: ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 35.0,
        ),
      ),
    );


    final userImage2 = Positioned(
      right: 0,
      top: 15.0,
      child: InkWell(
        onTap: () => Navigator.pushNamed(null, homeViewRoute),
        child: Hero(
          tag: AssetImage('assets/images/atencion-primaria.jpg'),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(14.0),
            child: Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/atencion-primaria.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    final userName2 = Text(
      'No deseo saber si padesco??',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );

    final cardContent2 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName2,
        SizedBox(
          height: 5.0,
        ),
        RaisedButton(
        color: Colors.orange,
        onPressed: 
          () => Navigator.of(context).pushNamed(riskFormRoute)          
        ,
        child: Text("Realizar test"), 
        )
      ],
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
                    //-------------------------------------------------
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
                    ),
                    //-------------------------------------------------------------------
                    SizedBox(
                      height: 20.0,
                    ),
                    //-------------------------------------------------------------------
                    Container(
                      height: 150.0,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(14.0),
                              child: Container(
                                padding: EdgeInsets.only(top: 20.0, right: 100.0, left: 20.0),
                                height: 150.0,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: cardContent2,
                              ),
                            ),
                          ),
                          userImage2
                        ],
                      ),
                    ),
                    //......................................................................
                    SizedBox(
                      height: 60.0,
                    ),
                    //-----------------------------------------------------------------------
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