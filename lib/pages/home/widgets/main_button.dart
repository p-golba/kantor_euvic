import 'package:flutter/material.dart';
import 'package:kantor_euvic/theme/app_colors.dart';

class MainButton extends StatelessWidget {
  final String buttonText;

  const MainButton({
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      height: MediaQuery.of(context).size.height * 0.065,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.blue,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 4),
              spreadRadius: 0,
              blurRadius: 4,
              color: Color.fromRGBO(0, 0, 0, 0.25),
            )
          ]),
      child: Center(
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    );
  }
}
