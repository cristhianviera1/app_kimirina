import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:kimirina_app/_routes/routes.dart';
import 'package:kimirina_app/utils/colors.dart';

class RiskFormPage extends StatefulWidget {
  @override
  _RiskFormPageState createState() => _RiskFormPageState();
}

class _RiskFormPageState extends State<RiskFormPage> {
  @override
  Widget build(BuildContext context) {
    //AppBar
    final appBar = Padding(
      padding: EdgeInsets.only(bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
    final pageTitle = Container(
      child: Text(
        "Tu sinceridad es muy importante",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    );
    var _picked;
    final firstQuest = Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("\n¿Usted utilizo condón, en su última relacion sexual?\n",style: styleTextQuestions,),
          RadioButtonGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            onSelected: (String selected) => setState(() {
            }),
            labels: <String>[
              "Si",
              "No",
            ],
            picked: _picked,
          ),
          Text("\nEn los últimos 6 meses con cuantas personas ha mantenido relaciones sexuales?\n",style: styleTextQuestions),
          TextFormField(
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.black),
              labelText: "Ingrese un número",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black38),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
              ),
            ),
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.black),
            cursorColor: Colors.black,
          ),

          Text("\n¿En los últimos 6 meses usted mantuvo relaciones sexuales bajo el efecto de las drogas?\n",style: styleTextQuestions),
          RadioButtonGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            onSelected: (String selected) => setState(() {
            }),
            labels: <String>[
              "Si",
              "No",
            ],
            picked: _picked,
          ),
        ],
      ),
    );
    final submitBtn = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Text(
              'Continuar',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
              appBar,
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[pageTitle, firstQuest, submitBtn],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
