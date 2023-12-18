import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_flutter/core/theme/colors.dart';

class CorrectWrongAnswerWidget extends StatelessWidget {
  CorrectWrongAnswerWidget({
    super.key,
    required this.isCorrect,
    required this.answer,
  });

  bool isCorrect;
  String answer;

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
          color: isCorrect ? Colors.green.withOpacity(.9) : UIColors.red,
        ),
        borderRadius: BorderRadius.circular(20),
        color: isCorrect ? Colors.green.withOpacity(.9) : UIColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              answer,
              style: GoogleFonts.nunito(
                color: isCorrect ? UIColors.white : UIColors.red,
                fontWeight: isCorrect ? FontWeight.w800 : FontWeight.w400,
                fontSize: size.height * .02,
              ),
            ),
            isCorrect
                ? const Icon(
                    Icons.check,
                    color: UIColors.white,
                  )
                : const Icon(
                    Icons.close,
                    color: UIColors.red,
                  )
          ],
        ),
      ),
    );
  }
}
