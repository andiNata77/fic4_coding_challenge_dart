import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menghitung Jumlah Lima Angka',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menghitung Jumlah Lima Angka'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Masukkan lima angka:',
              ),
              SizedBox(height: 16.0),
              AngkaInput(),
            ],
          ),
        ),
      ),
    );
  }
}

class AngkaInput extends StatefulWidget {
  @override
  _AngkaInputState createState() => _AngkaInputState();
}

class _AngkaInputState extends State<AngkaInput> {
  final TextEditingController _controller = TextEditingController();
  int _total = 0;

  void _hitungJumlah() {
    String input = _controller.text;
    List<String> angkaList = input.split(' ');
    int total = 0;

    for (int i = 0; i < angkaList.length; i++) {
      total += int.parse(angkaList[i]);
    }

    setState(() {
      _total = total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: _controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Contoh: 1 2 3 4 5',
          ),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: _hitungJumlah,
          child: Text('Hitung Jumlah'),
        ),
        SizedBox(height: 16.0),
        Text(
          'Jumlah lima angka: $_total',
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
