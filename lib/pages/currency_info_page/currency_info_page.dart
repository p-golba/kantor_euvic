import 'package:flutter/material.dart';

class CurrencyInfoPage extends StatelessWidget {
  const CurrencyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff6583C1),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
                color: Color(0xffFEFAEE),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    width: 100,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff6583C1),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
