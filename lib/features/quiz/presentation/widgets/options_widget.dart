import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_flutter/core/theme/theme.dart';

class OptionsWidget extends StatelessWidget {
  OptionsWidget({
    super.key,
    required this.options,
    this.isClicked = false,
  });

  final String options;
  bool isClicked;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.only(
        bottom: size.height * .015,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: isClicked ? UIColors.white : UIColors.gray,
        ),
        borderRadius: BorderRadius.circular(20),
        color:
            isClicked ? UIColors.purpleLight.withOpacity(0.6) : UIColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          options,
          style: GoogleFonts.nunito(
            color: UIColors.black,
            fontWeight: isClicked ? FontWeight.w800 : FontWeight.w400,
            fontSize: size.height * .02,
          ),
        ),
      ),
    );
  }
}
