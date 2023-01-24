import 'package:aplikasi_kuis/quiz.dart';
import 'package:flutter/material.dart';
import './hasil.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var pertanyaan = [
    {
      'pertanyaan': 'Tempat apa yang ingin kamu kunjungi?',
      'jawaban': [
        {'text': 'Pegunungan', 'skor': 5},
        {'text': 'Pantai', 'skor': 10},
        {'text': 'Hutan', 'skor': 8},
        {'text': 'Mall', 'skor': 3},
      ]
    },
    {
      'pertanyaan': 'Apa warna kesukaanmu?',
      'jawaban': [
        {'text': 'Merah', 'skor': 10},
        {'text': 'Biru', 'skor': 8},
        {'text': 'Hijau', 'skor': 5},
        {'text': 'Hitam', 'skor': 3},
      ]
    },
    {
      'pertanyaan': 'Kegiatan yang kamu sukai?',
      'jawaban': [
        {'text': 'Membaca Buku', 'skor': 3},
        {'text': 'Olahraga', 'skor': 8},
        {'text': 'Travelling', 'skor': 10},
        {'text': 'Nonton film', 'skor': 5},
      ]
    },
  ];
  var indexSoal = 0;
  int totalSkor = 0;

  void resetQuiz() {
    setState(() {
      indexSoal = 0;
      totalSkor = 0;
    });
  }

  void jawaban(int skor) {
    totalSkor = totalSkor + skor;
    setState(() {
      indexSoal += 1;
    });
    print(indexSoal);

    if (indexSoal < pertanyaan.length) {
      print('Soal masih ada');
    } else {
      print('Soal sudah selesai');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Quiz Kepribadian")),
        ),
        body: indexSoal < pertanyaan.length
            ? Quiz(
                jawaban: jawaban, pertanyaan: pertanyaan, indexSoal: indexSoal)
            : Hasil(totalSkor,resetQuiz),
      ),
    );
  }
}
