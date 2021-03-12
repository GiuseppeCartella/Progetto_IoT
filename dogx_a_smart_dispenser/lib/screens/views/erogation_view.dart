/*import 'package:dogx_a_smart_dispenser/models/Animal.dart';
import 'package:dogx_a_smart_dispenser/models/Dispenser.dart';
import 'package:dogx_a_smart_dispenser/screens/views/erogation_page.dart';
import 'package:dogx_a_smart_dispenser/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ErogationView extends StatefulWidget {
  //final Dispenser dispenser;
  final List<Dispenser> dispensers;
  final List<Animal> animals;
  //final ValueChanged<int> onPush;
  ErogationView({/*this.dispenser*/this.dispensers, this.animals
      /* this.onPush*/
      });

  @override
  _ErogationViewState createState() => _ErogationViewState();
}

class _ErogationViewState extends State<ErogationView> {
  @override
  Widget build(BuildContext context) {

    final dispensers = Provider.of<List<Dispenser>>(context);
    //final animals = Provider.of<List<Animal>>(context);
    return StreamProvider<List<Animal>>.value(
      value: DatabaseService().animals,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title:Text(
            'Eroga dal tuo dispenser',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: ErogationPage(/*dispenser: widget.dispenser*/dispensers: dispensers, /*, animals:animals*/),
      ),
    );
  }
}
*/