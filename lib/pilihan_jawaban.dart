import 'package:flutter/material.dart';

class PilihanJawaban extends StatelessWidget {
  // const Jawaban({Key key}) : super(key: key);

  Function opsiJawaban;
  String jawabanText;
  PilihanJawaban(this.opsiJawaban, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: opsiJawaban,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: Text(jawabanText)),
    );
  }
}
