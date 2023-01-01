import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background3.jpg"),
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
                  )
                ]),
                height: 350,
                // container text and button
                child: Column(children: [
                  SizedBox(
                      height: 150,
                      child: Column(
                        children: [
                          Text(
                            "Health mind in a \n healthy body ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inika(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  letterSpacing: .8,
                                  fontSize: 36),
                            ),
                          ),
                          Text(
                            "Lots of gyms and sports center, close \nto where you live, all in one app ",
                            // textAlign: TextAlign.center,
                            style: GoogleFonts.inika(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  letterSpacing: .8,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      )),
                  // Button Next
                  const SizedBox(
                    height: 5,
                  ),
                  /*    Material(
                    elevation: 1,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 200,
                      height: 50,
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.imFellFrenchCanon(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              letterSpacing: .5,
                              fontSize: 26),
                        ),
                      ),
                    ),
                  ),*/
                ])),
          ],
        ));
  }
}
