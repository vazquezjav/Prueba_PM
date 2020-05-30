import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba/person.dart';

class Acerca extends StatelessWidget {
  Person person;
  Acerca(this.person);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
                labelText: person.name,
              ),
            ),
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.home),
                border: OutlineInputBorder(),
                labelText: person.address,
              ),
            ),
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.perm_identity),
                border: OutlineInputBorder(),
                labelText: person.cedula,
              ),
            ),
            
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.date_range),
                border: OutlineInputBorder(),
                labelText: person.fecha,
              ),
            ),
            
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.insert_emoticon),
                border: OutlineInputBorder(),
                labelText: person.sexo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
