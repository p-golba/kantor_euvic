import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                ),
                child: Column(
                  children: [
                    Text(
                      'Hello, Przemyslaw!',
                      style: TextStyle(
                        color: Color(0xff150C2C),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily:
                            GoogleFonts.ibmPlexSansDevanagari().fontFamily,
                      ),
                    ),
                    Text(
                      'choose your currency',
                      style: TextStyle(
                        color: Color(0xff6881C0),
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        fontFamily:
                            GoogleFonts.ibmPlexSansDevanagari().fontFamily,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.17,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 252,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff6881C0),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                          blurRadius: 4,
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                        )
                      ]),
                  child: Center(
                    child: Text(
                      'USD',
                      style: TextStyle(
                        color: Color(0xffFEFAEE),
                        fontFamily:
                            GoogleFonts.ibmPlexSansDevanagari().fontFamily,
                        fontWeight: FontWeight.w900,
                        fontSize: 32,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 252,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff6881C0),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                          blurRadius: 4,
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                        )
                      ]),
                  child: Center(
                    child: Text(
                      'EUR',
                      style: TextStyle(
                        color: Color(0xffFEFAEE),
                        fontFamily:
                            GoogleFonts.ibmPlexSansDevanagari().fontFamily,
                        fontWeight: FontWeight.w900,
                        fontSize: 32,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
