/*Buatlah sebuah program Dart yang mencetak bilangan genap dari 1 hingga 10.
Program ini harus menggunakan perulangan (looping) untuk mencetak
semua bilangan genap tersebut. */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> listNomor = [];
    for (int i = 1; i <= 10; i++) {
      if (i % 2 == 0) {
        listNomor.add(i);
      }
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Bilangan Genap'),
          ),
          body: Center(
            child: ListView.builder(
                itemCount: listNomor.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('${listNomor[index]}'),
                  );
                }),
          ),
        ));
  }
}
