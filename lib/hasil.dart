import 'package:flutter/material.dart';
import './main.dart';

class Hasil extends StatelessWidget {
  // const Hasil({Key key}) : super(key: key);
  int totalSkor;
  Function resetQuiz;
  Hasil(this.totalSkor, this.resetQuiz);

  String get hasilText {
    String hasil = 'Hello World';
    if (totalSkor <= 10) {
      hasil = 'Anda Seorang Introvert';
    } else if (totalSkor <= 15) {
      hasil = 'Mulailah mencari teman dekat agar hidupmu bahagia';
    } else if (totalSkor <= 25) {
      hasil = 'Kembangkan lagi bakatmu';
    } else {
      hasil = 'Berusahalah untuk menjauhi para wibu, karena virus wibu menular';
    }
    return hasil;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          hasilText,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: resetQuiz, child: Text('Tekan Untuk Reset Quiz'))
      ],
    ));
  }
}
