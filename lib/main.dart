
import 'package:aimball/carrito/carrito_store.dart';
import 'package:aimball/pantallaInicio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (context) => Carrito(),
  child: MyApp(),

)
);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store Guns',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: PantallaInicio(),
    );
  }
}
