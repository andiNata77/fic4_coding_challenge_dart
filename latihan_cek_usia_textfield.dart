/*Buatlah sebuah program Dart yang meminta pengguna untuk memasukkan usia 
mereka dan kemudian mencetak pesan "Anda adalah seorang dewasa" jika usia 
lebih dari atau sama dengan 18, dan mencetak pesan "Anda masih seorang 
anak-anak" jika usia kurang dari 18. */
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
          title: Text("Cek Usia"),
        ),
        body: Center(
          child: CekUsia(),
        ),
      ),
    );
  }
}

class CekUsia extends StatefulWidget {
  const CekUsia({super.key});

  @override
  State<CekUsia> createState() => _CekUsiaState();
}

class _CekUsiaState extends State<CekUsia> {
  TextEditingController usiaController = TextEditingController();
  String pesan = '';

  void cekUsia() {
    int usia = int.tryParse(usiaController.text) ?? 0;

    if (usia >= 18) {
      setState(() {
        pesan = 'Anda adalah seorang dewasa';
      });
    } else {
      setState(() {
        pesan = 'Anda masih anak-anak';
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
          untuk memasukkan usia */
          TextField(
            controller: usiaController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Masukan Usia Anda"),
          ),
          SizedBox(height: 16.0),
          //Widget ElevatedButton untuk membuat tombol "Cek Usia".
          ElevatedButton(
            onPressed: cekUsia,
            child: Text('Cek Usia'),
          ),
          SizedBox(height: 16.0),
          Text(pesan),
        ],
      ),
    );
  }
}
