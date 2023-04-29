import 'package:flutter/material.dart';
import 'package:kantor_euvic/theme/app_colors.dart';

class ActionButton extends StatelessWidget {
  final BoxBorder? border;
  final void Function() onTap;
  final Icon icon;

  const ActionButton({
    required this.onTap,
    required this.border,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.12,
        decoration: BoxDecoration(
          border: border,
          color: AppColors.yellow,
          borderRadius: BorderRadius.circular(15),
        ),
        child: icon,
      ),
    );
  }
}
