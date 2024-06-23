import 'package:flutter/material.dart';

class TeksUtama extends StatelessWidget {
  final String text1;
  final String text2;

  TeksUtama({this.text1 = '', required this.text2});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Colors.red), // Warna teks diubah menjadi merah
        ),
        Text(
          text2,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.red), // Warna teks diubah menjadi merah
        ),
      ],
    );
  }
}

class TeksUtama2 extends StatelessWidget {
  final String text1;
  final String text2;

  TeksUtama2({required this.text1, required this.text2});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Text(
            text1,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
                fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            text2,
            textDirection: TextDirection.ltr,
            style: const TextStyle(color: Colors.white), 
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jobsheet 5 Adhitya Pramudita Ramadhan'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              TeksUtama(
                text1: 'SUNDARI',
                text2: 'STI202102238',
              ),
              TeksUtama(
                text1: 'AL NIZAR VALGIN SAPUTRA',
                text2: 'STI202102241',
              ),
              TeksUtama2(
                text1: 'ADHITYA PRAMUDITA RAMADHAN',
                text2: 'STI202102470',
              ),
              TeksUtama(
                text1: 'DEA AVILA',
                text2: 'STI202102252',
              ),
              TeksUtama(
                text1: 'DEFI ANDRIANI',
                text2: 'STI202102253',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
