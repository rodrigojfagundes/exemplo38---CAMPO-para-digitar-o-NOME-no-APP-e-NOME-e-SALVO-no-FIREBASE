import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exemplo38/add_user.dart';
import 'package:exemplo38/pag1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
//inicializando o firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

//TALVEZ NAO PRECISSE DO COMANDO A BAIXO... Tanto e q ta COMENTADO "//"
//  usando a variavel FIRESTORE para chamar o FIREBASE
//  FirebaseFirestore firestore = FirebaseFirestore.instance;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //no HOME/INICIO vamos chamar a classe PAGINA1
      home: pagina1(),
    );
  }
}
