import 'package:flutter/material.dart';
import 'package:kimirina_app/_routes/routes.dart';
import 'package:kimirina_app/screens/abandono_tratamineto.dart';
import 'package:kimirina_app/screens/sigue_tratamiento.dart';
import 'package:kimirina_app/screens/no_inicio_tratamiento.dart';

class ItsActualActionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "¿Que haces? ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 35.0,
        ),
      ),
    );
    
    final image1 = Positioned(
      left: 0,
      top: 15.0,
      child: InkWell(
        onTap: () => Navigator.pushNamed(null, homeViewRoute),
        child: Hero(
          tag: AssetImage('assets/images/cruz_roja.jpg'),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(14.0),
            child: Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/cruz_roja.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    final image2 = Positioned(
      right: 0,
      top: 15.0,
      child: InkWell(
        onTap: () => Navigator.pushNamed(null, homeViewRoute),
        child: Hero(
          tag: AssetImage('assets/images/XRoja.jpg'),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(14.0),
            child: Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/XRoja.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    final image3 = Positioned(
      left: 0,
      top: 15.0,
      child: InkWell(
        onTap: () => Navigator.pushNamed(null, homeViewRoute),
        child: Hero(
          tag: AssetImage('assets/images/No_inicia.jpg'),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(14.0),
            child: Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/No_inicia.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    final text1 = Text(
      'Estoy siguiendo un tratamiento',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );

    final text2 = Text(
      'Abandone el tratamiento',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );

    final text3 = Text(
      'No he iniciado untratamiento',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );

    final cardContent1 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text1,
        SizedBox(
          height: 5.0,
        ),
        RaisedButton(
        color: Colors.orange,
        onPressed: (){ 
          Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new SigueTratamientoPage();
        }));
        },
        child: Text("Que tal te va??"), 
        )
      ],
    );

    final cardContent2 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text3,
        SizedBox(
          height: 5.0,
        ),
        RaisedButton(
        color: Colors.orange,
        onPressed: (){ 
          Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new AbandonoTratamientoPage();
        }));
        },
        child: Text("Cuentanos la razon??"), 
        )
      ],
    );

    final cardContent3 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text1,
        SizedBox(
          height: 5.0,
        ),
        RaisedButton(
        color: Colors.orange,
        onPressed: (){ 
          Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new NoInicioTratamientoPage();
        }));
        },
        child: Text("Por que??"), 
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
                                    child: cardContent1,
                                  ),
                                ),
                              ),
                              image1
                            ],
                          ),
                    ),
                    //-------------------------------------------------------------------
                    SizedBox(
                      height: 10.0,
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
                          image2
                        ],
                      ),
                    ),
                    //......................................................................
                    SizedBox(
                      height: 10.0,
                    ),
                    //-----------------------------------------------------------------------
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
                                    child: cardContent3,
                                  ),
                                ),
                              ),
                              image3
                            ],
                          ),
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