import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flexible',
      home: Scaffold(
        appBar: AppBar(title: Text('Flexible')),
        body: Column(
          children: [
            _kotakUji(Colors.amber, 150, 'Normal'),
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: _kotakUji(Colors.green, 100, 'Flexible')
            ),
            Expanded(flex: 2, child: _kotakUji(Colors.blue, 250, 'Expanded')),
          ],
        ),
      ),
    );
  }

  Container _kotakUji(Color warna, double tinggi, String teks) {
    return Container(
      width: double.infinity,
      height: tinggi,
      color: warna,
      alignment: const Alignment(0.0, 0.0),
      child: Text(
        teks,
        style: const TextStyle(fontSize: 30, color: Colors.white),
      )
    );
  }
}

class KotakBiruJempolKecil extends StatelessWidget {
  const KotakBiruJempolKecil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(Icons.thumb_up, color: Colors.white, size: 40),
    );
  }

}
