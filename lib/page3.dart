import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: const Offset(0, 30),
                  )
                ]),
                height: 300,
                child: Column(children: [
                  Text(
                    "Remember, no one\nStart at the top ",
                    // textAlign: TextAlign.right,
                    style: GoogleFonts.inika(
                      textStyle: const TextStyle(
                          color: Colors.white, letterSpacing: .8, fontSize: 36),
                    ),
                  ),
                ])),
          ],
        ));
  }
}
