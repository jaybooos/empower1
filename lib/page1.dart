import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: double.infinity,
      //height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/icon.png",
          ),
          //   fit: BoxFit.cover,
        ),
        //تدرج الالوان
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black87,
              Color.fromARGB(255, 36, 36, 36),
              Color.fromARGB(221, 60, 57, 57),
              Color.fromARGB(137, 51, 50, 50),
              //  Colors.grey.shade800,
              // Color.fromARGB(255, 77, 81, 91),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
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
            height: 350,
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'EMPOWER',
                  style: GoogleFonts.tradeWinds(
                    textStyle: const TextStyle(
                        color: Colors.white, letterSpacing: .5, fontSize: 26),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
