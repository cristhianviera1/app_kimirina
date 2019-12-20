import 'package:flutter/material.dart';
import 'package:kimirina_app/_routes/routes.dart';
import 'package:kimirina_app/models/city.dart';
import 'package:kimirina_app/utils/colors.dart';
import 'package:line_icons/line_icons.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  List<City> _cities = City.getCities();
  List<DropdownMenuItem<City>> _dropdownMenuItems;
  City _selectedCity;
  var _comboBoxColor = Colors.black;
   @override
  void initState() {
    _dropdownMenuItems =  buildDropdownMenuItems(_cities);
    _selectedCity = _dropdownMenuItems[0].value;
    super.initState();
  }
   List<DropdownMenuItem<City>> buildDropdownMenuItems(List cities) {
    List<DropdownMenuItem<City>> items = List();
    for (City city in cities) {
      items.add(
        DropdownMenuItem(
          value: city,
          child: Text(city.name),
        ),
      );
    }
    return items;
  }

  final _formKey = GlobalKey<FormState>();
  int _genderRadioBtnVal = -1;

  void _handleGenderChange(int value) {
    setState(() {
      _genderRadioBtnVal = value;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        "Cuentamos sobre ti",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    );

    final formFieldSpacing = SizedBox(
      height: 30.0,
    );

    final registerForm = Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            _buildFormField('Nombre', LineIcons.user,TextInputType.text, true),
            formFieldSpacing,
            _buildFormField('Edad', LineIcons.calendar,TextInputType.number, true),
            formFieldSpacing,
          ],
        ),
      ),
    );
    final gender = Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Row(
        children: <Widget>[
          Text("Género: ",style: TextStyle(color: Colors.black),),
          SizedBox(width: 30.0,),
          Radio(
            value: 0,
            groupValue: _genderRadioBtnVal,
            onChanged: _handleGenderChange,
          ),
          Text("Hombre"),
          Radio(
            value: 1,
            groupValue: _genderRadioBtnVal,
            onChanged: _handleGenderChange,
          ),
          Text("Mujer"),
          Radio(
            value: 2,
            groupValue: _genderRadioBtnVal,
            onChanged: _handleGenderChange,
          ),
          Text("Trans"),
          SizedBox(height: 60.0,)
        ],
      ),
    );
    final city = Padding(
      padding: EdgeInsets.only(top:0.0),
      child: Row(
        children: <Widget>[
                Text("Ciudad: ",style: TextStyle(color: Colors.black),),
                SizedBox(width: 30.0,),
                DropdownButton(        
                  icon: Icon(Icons.home,color: Colors.black38,),
                  value: _selectedCity,
                  items: _dropdownMenuItems,
                  onChanged: onChangeDropdownItem,
                  style: TextStyle(color: _comboBoxColor),
                ),
            formFieldSpacing,
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
            onPressed: () => Navigator.of(context).pushNamed(preguntaTieneITS),
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
                  children: <Widget>[
                    pageTitle,
                    registerForm,
                    gender,
                    city,
                    submitBtn
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormField(String label, IconData icon, TextInputType type, bool isEnabled) {
    return TextFormField(
      enabled: isEnabled,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black),
        prefixIcon: Icon(
          icon,
          color: Colors.black38,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
      ),
      keyboardType: type,
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.black,
    );
  }
  onChangeDropdownItem(City selectedCity) {
    setState(() {
      _selectedCity = selectedCity;
      _comboBoxColor = primaryColor;
    });
  }
}
