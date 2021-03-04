
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practicaflutter/src/pages/conteo_page.dart';

class MyApp extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
        home: Center(
          child: ConteoPage(),
        )
    );
  }
}