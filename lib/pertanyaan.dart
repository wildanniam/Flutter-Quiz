import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pertanyaan extends StatelessWidget {
  // const Pertanyaan({Key key}) : super(key: key);

  var pertanyaan;
  Pertanyaan(this.pertanyaan);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        pertanyaan,
        style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500), 
        textAlign: TextAlign.center,
      ),
    );
  }
}
