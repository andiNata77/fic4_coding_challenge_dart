/*Buatlah sebuah program Dart yang meminta pengguna untuk memasukkan sebuah 
angka dan kemudian mencetak pesan "Angka tersebut positif" jika angka yang 
dimasukkan lebih besar dari 0, dan mencetak pesan "Angka tersebut negatif" 
jika angka yang dimasukkan lebih kecil dari 0. Jika angka yang dimasukkan 
adalah 0, program harus mencetak pesan "Angka tersebut nol". */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cek Angka"),
        ),
        body: Center(
          child: CekAngka(),
        ),
      ),
    );
  }
}

class CekAngka extends StatefulWidget {
  const CekAngka({super.key});

  @override
  State<CekAngka> createState() => _CekAngkaState();
}

class _CekAngkaState extends State<CekAngka> {
  TextEditingController angkaController = TextEditingController();
  String pesan = '';

  void cekAngka() {
    int angka = int.tryParse(angkaController.text) ?? 0;

    if (angka >= 0) {
      setState(() {
        pesan = 'Angka bernilai positif';
      });
    } else {
      setState(() {
        pesan = 'Angka bernilai negatif';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*Menggunakan widget TextField untuk meminta pengguna 
          untuk memasukkan angka */
          TextField(
            controller: angkaController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Masukan angka Anda"),
          ),
          SizedBox(height: 16.0),
          //Widget ElevatedButton untuk membuat tombol "Cek angka".
          ElevatedButton(
            onPressed: cekAngka,
            child: Text('Cek angka'),
          ),
          SizedBox(height: 16.0),
          Text(pesan),
        ],
      ),
    );
  }
}
