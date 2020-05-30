
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba/inicio.dart';
import 'package:prueba/person.dart';

class Datos_Personales extends StatelessWidget {
  final _nameCtrl = TextEditingController();
  final _addressCtrl = TextEditingController();

//generador de claves atado a un formulario, para los datos atados a la interfaz
  final _formKey = GlobalKey<FormState>();
  Person person = Person();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Datos personales'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Datos Personales'),
              Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Escriba su nombre?',
                          labelText: 'Nombre *',
                        ),
                        controller: _nameCtrl,
                        validator: (value) {
                          if (value.isEmpty) return "Ingrese datos";
                        },
                        onSaved: (newValue) => person.name = newValue,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.perm_identity),
                          hintText: 'Numero cedula',
                          labelText: 'Identificacion*',
                        ),
                        onSaved: (newValue) => person.cedula = newValue,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.home),
                          hintText: 'Escriba su direccion?',
                          labelText: 'Direccion *',
                        ),
                        onSaved: (newValue) => person.address = newValue,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.date_range),
                          hintText: 'Escriba su fecha Nacimiento?',
                          labelText: 'Fecha Nacimiento *',
                        ),
                        onSaved: (newValue) => person.fecha = newValue,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.insert_emoticon),
                          hintText: 'Sexo-',
                          labelText: 'Sexo *',
                        ),
                        //controller: _addressCtrl,
                        onSaved: (newValue) => person.sexo = newValue,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                              color: Colors.blue,
                              child: Text('Siguiente'),
                              onPressed: () {
                                goSiguiente(context);
                              }),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ));
  }

  void _saveData(BuildContext context) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(_nameCtrl.text);
      print(_addressCtrl.text);
      _addressCtrl.text += ' Mendez';
      print("Nombre ${person.sexo}");
    }
    //_go(context);
  }

  void goSiguiente(BuildContext context) {
   
    _saveData(context);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Inicio(person)));
  }
}
