import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kantor_euvic/pages/home_page/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.home_greetings,
                      style: const TextStyle(
                        color: Color(0xff150C2C),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        height: 1.0
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)!.choose,
                      style: const TextStyle(
                        color: Color(0xff6881C0),
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        height: 1.0
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: MainButton(
                  buttonText: 'USD',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: MainButton(
                  buttonText: 'EUR',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
