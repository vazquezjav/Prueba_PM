import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Agenda extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.work),
                border: OutlineInputBorder(),
                fillColor: Colors.red[100],
                filled: true,
                
                labelText: "Congreso Internacional de Derecho",
              ),
            ),
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
                
                labelText: "Promover la comunicación entre Estudiantes ",
              ),
            ),
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.date_range),
                border: OutlineInputBorder(),
                labelText: "10/10/2020",
              ),
            ),
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.work),
                border: OutlineInputBorder(),
                
                fillColor: Colors.red[100],
                filled: true,
                labelText: "Congreso Internacional de Vinculacion",
              ),
            ),
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
                labelText: "Congreso de Vinculación con la Sociedad ",
              ),
            ),
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.date_range),
                border: OutlineInputBorder(),
                labelText: "05/05/2020",
              ),
            ),
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.work),
                border: OutlineInputBorder(),
                
                fillColor: Colors.red[100],
                filled: true,
                labelText: "Congreso Latinoamericano de Agronomia",
              ),
            ),
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
                labelText: "Promover las Ciencias Agronómicas en Ecuador",
              ),
            ),
            TextField(
              obscureText: true,
              enabled: false,
              decoration: InputDecoration(
                icon: Icon(Icons.date_range),
                border: OutlineInputBorder(),
                labelText: "07/07/2020",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
