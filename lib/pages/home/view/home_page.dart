import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kantor_euvic/pages/currency_info/view/currency_page.dart';
import 'package:kantor_euvic/pages/home/widgets/widgets.dart';
import 'package:kantor_euvic/theme/app_colors.dart';

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
                      style: TextStyle(
                          color: AppColors.purple,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          height: 1.0),
                    ),
                    Text(
                      AppLocalizations.of(context)!.choose,
                      style: TextStyle(
                          color: AppColors.blue,
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          height: 1.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CurrencyPage(
                          currencyCode: 'usd',
                        ),
                      ),
                    );
                  },
                  child: MainButton(
                    buttonText: 'USD',
                  ),
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
