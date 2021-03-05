import 'package:flutter/material.dart';

class ControlPage extends StatefulWidget {
  @override
  createState() {
    return _ControlPageState();
  }
}

class _ControlPageState extends State < ControlPage > {
  final _estilo = TextStyle(fontSize: 30);
  int _conteo = 15;
  int _vertical = 0;
  int _horizontal = 0;
  var texto = '';
  void validar() {
    if (_vertical > 10) {
        texto = "Esta en el limite";
        _vertical = 10;
    }
    if (_vertical < -9) {
        _vertical = -9;
        texto = "Esta en el limite";
      
    }
    if (_vertical > -9 && _vertical < 9){
      texto = "";
    }
  
  
    
}


    
      
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column( //columna
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Clicks", style: _estilo),
            Text("$texto", style: _estilo),
            Text("$_vertical", style: _estilo),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [FlatButton(child: Text("A"), onPressed: () {
                setState(() {
                  _vertical++;
                validar();
                });
              }), ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [FlatButton(child: Text("I"), onPressed: () {
                setState(() {
                  validar();                  
                  _horizontal--;
                });
              }), FlatButton(child: Text("D"), onPressed: () {
                setState(() {
                  validar();
                  _horizontal++;
                });
              })]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [FlatButton(child: Text("Ab"), onPressed: () {
                setState(() {
                  validar();
                  _vertical--;
                });
              }), ]),
            Row()
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            elevation: 10,
            onPressed: () {
              setState(() {
                _conteo++;
              });
            }),
          FloatingActionButton(
            child: Icon(Icons.remove),
            elevation: 1,
            onPressed: () {
              setState(() {
                _conteo--;
              });
            }),
        ],
      ));

    /*child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _conteo++;
          });
        },*/
  }
}