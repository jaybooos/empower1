import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Container color
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: const Offset(0, 30),
                  ),
                ]),
                height: 350,
                // container text and button
                child: Column(children: [
                  Text(
                    "Stop Wishing And \nStart Doing ",
                    textAlign: TextAlign.center,
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
