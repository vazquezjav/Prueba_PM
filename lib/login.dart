import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba/datos_personales.dart';
import 'package:prueba/inicio.dart';

class Login extends StatelessWidget {
final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
          title: Text('Login'),
        ),
         body: Center(
           child: Column(
             children: <Widget>[
               Form(
                 key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'User',
                          labelText: 'Nombre *',
                        ),
                        validator: (value) {
                          if (value!="admin") return "Ingrese admin";
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Pass',
                          labelText: 'pass *',
                        ),
                        validator: (value) {
                          if (value!="admin") return "Ingrese admin";
                        },
                      ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: <Widget>[
                           RaisedButton(
                              color: Colors.blue,
                              child: Text('Siguiente'),
                              onPressed: () {
                                _saveData(context);
                              }),
                         ],
                       ),
                    ],
                  ),
               ),
             ],
           ),
         ),
     );
  }
    void _saveData(BuildContext context) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      go(context);
    }else{
      
    }
    //_go(context);
  }
  void go(BuildContext context) {
    //_saveData(context);
    
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Datos_Personales()));
  }
}