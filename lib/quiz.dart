import 'package:flutter/material.dart';
import './pertanyaan.dart';
import './pilihan_jawaban.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key key}) : super(key: key);
  List <Map<String, Object>> pertanyaan;
  int indexSoal;
  Function jawaban;
  Quiz({
    @required this.jawaban,
    @required this.pertanyaan,
    @required this.indexSoal,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Pertanyaan(pertanyaan[indexSoal]['pertanyaan']),
            ...(pertanyaan[indexSoal]['jawaban'] as List<Map<String, Object>>)
                .map((jawabanText) {
              return PilihanJawaban(() => jawaban(jawabanText['skor']), jawabanText['text']);
            }),
          ],
        );
  }
}