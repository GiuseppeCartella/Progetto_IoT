import 'package:dogx_a_smart_dispenser/models/Animal.dart';
import 'package:dogx_a_smart_dispenser/services/auth.dart';
import 'package:dogx_a_smart_dispenser/services/database.dart';
import 'package:flutter/material.dart';

class UpdateForm extends StatefulWidget {
  Animal animal;
  UpdateForm({this.animal});

  @override
  _UpdateFormState createState() => _UpdateFormState();
}

class _UpdateFormState extends State<UpdateForm> {
  final _formkey = GlobalKey<FormState>();
  final DatabaseService _dbService = DatabaseService();
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    String name = widget.animal.name;
    String dailyRation = widget.animal.dailyRation.toString();

    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          TextFormField(
            initialValue: widget.animal.name,
            decoration: InputDecoration(hintText: 'Nome'),
            validator: (val) => val.isEmpty ? 'Inserisci un nome' : null,
            onChanged: (val) {
              setState(() => name = val);
            },
          ),
          TextFormField(
            initialValue: widget.animal.dailyRation.toString(),
            decoration: InputDecoration(hintText: 'Razione'),
            keyboardType: TextInputType.number,
            validator: (val) => val.isEmpty ? 'Inserisci una razione' : null,
            onChanged: (val) {
              setState(() => dailyRation = val);
            },
          ),
          SizedBox(height: 20),
          RaisedButton(
            color: Colors.pink[400],
            child: Text(
              'Modifica',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              if (_formkey.currentState.validate()) {
                _dbService.updateAnimal(
                    widget.animal.collarId,
                    name,
                    int.parse(dailyRation),
                    int.parse(dailyRation),
                    _authService.getCurrentUserUid());
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
