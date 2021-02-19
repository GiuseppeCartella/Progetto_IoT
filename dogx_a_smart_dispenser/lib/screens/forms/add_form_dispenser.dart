import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dogx_a_smart_dispenser/models/Animal.dart';
import 'package:dogx_a_smart_dispenser/models/User.dart';
import 'package:dogx_a_smart_dispenser/screens/list_views/animal_list.dart';
import 'package:dogx_a_smart_dispenser/services/auth.dart';
import 'package:dogx_a_smart_dispenser/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddFormDispenser extends StatefulWidget {
  //final List<Animal> animals;
  //AddFormDispenser({this.animals});
  @override
  _AddFormDispenserState createState() => _AddFormDispenserState();
}

class _AddFormDispenserState extends State<AddFormDispenser> {
  final _formkey = GlobalKey<FormState>();
  final DatabaseService _dbService = DatabaseService();
  final AuthService _authService = AuthService();

  String id;
  String userId;
  int qtnRation;
  @override
  Widget build(BuildContext context) {
    int qnt = 0;

    //List<Animal> animals = widget.animals;
    //print(animals);
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(hintText: 'ID'),
            validator: (val) => val.isEmpty ? 'Inserisci un id' : null,
            onChanged: (val) {
              setState(() => id = val);
            },
          ),
          SizedBox(height: 20),
          RaisedButton(
            color: Colors.pink[400],
            child: Text(
              'Aggiungi',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              //print(animals2);
              if (_formkey.currentState.validate()) {
                _dbService.addDispenser(
                  id, //quello che inserisco --> QRCODE
                  _authService.getCurrentUserUid(),
                  qnt,
                  //widget.animals[0].availableRation, //razione
                );

                Navigator.pop(context);
              }
            },
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}