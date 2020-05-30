import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba/acerca.dart';
import 'package:prueba/agenda.dart';
import 'package:prueba/login.dart';
import 'package:prueba/person.dart';

class Inicio extends StatelessWidget {
  Person person;
  
  Inicio(this.person);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio ${person.name}'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Acerca'),
              onTap: ()
               {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Acerca(person)));
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Agenda'),
              onTap: ()
               {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Agenda()));
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Login'),
              onTap: ()
               {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Login()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Imagen ',
            ),
            Image.asset("imagen/congreso.png"),
            Text(
              'Congreso Principal ',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                    color: Colors.blue,
                    child: Text('Eventos'),
                    onPressed: () {
                      go(context);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void go(BuildContext context) {
    //_saveData(context);

    Navigator.push(context, MaterialPageRoute(builder: (context) => Agenda()));
  }
}
