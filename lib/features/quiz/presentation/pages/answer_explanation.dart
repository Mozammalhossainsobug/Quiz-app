import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_flutter/core/services/routes/routes.dart';
import 'package:quiz_app_flutter/core/theme/theme.dart';
import 'package:quiz_app_flutter/core/utils/assets.dart';
import 'package:quiz_app_flutter/core/widgets/button/button.dart';
import 'package:quiz_app_flutter/features/quiz/presentation/widgets/correct_wrong_answer_widget.dart';
import 'package:quiz_app_flutter/features/quiz/presentation/widgets/options_widget.dart';

class AnswerExplanation extends StatefulWidget {
  const AnswerExplanation({super.key});

  @override
  State<AnswerExplanation> createState() => _AnswerExplanationState();
}

class _AnswerExplanationState extends State<AnswerExplanation> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: UIColors.purple,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: size.width,
              margin: EdgeInsets.only(top: size.height * .05),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: size.width * .7,
                    height: size.width * .1,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.sp),
                      child: Text(
                        'Answer Explanation',
                        style: TextStyle(
                          color: UIColors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 21.sp,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * .8,
              width: size.width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height * .02),
                      Text(
                        'QUESTION 3 OF 10',
                        style: GoogleFonts.nunito(
                          color: UIColors.gray,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: size.height * .02),
                      Text(
                        'Which player scored the fastest hat-trick in the Premier League?',
                        style: GoogleFonts.nunito(
                          color: UIColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: size.height * .025,
                        ),
                      ),
                      SizedBox(height: size.height * .02),
                      Text(
                        'SELECTED ANSWER',
                        style: GoogleFonts.nunito(
                          color: UIColors.gray,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: size.height * .01),
                      CorrectWrongAnswerWidget(
                        isCorrect: false,
                        answer: 'Robin van Persie',
                      ),
                      SizedBox(height: size.height * .02),
                      Text(
                        'CORRECT ANSWER',
                        style: GoogleFonts.nunito(
                          color: UIColors.gray,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: size.height * .01),
                      CorrectWrongAnswerWidget(
                        isCorrect: true,
                        answer: 'Sadio Mane',
                      ),
                      SizedBox(height: size.height * .02),
                      Text(
                        'EXPLANATION',
                        style: GoogleFonts.nunito(
                          color: UIColors.gray,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: size.height * .01),
                      Text(
                        'Southampton\'s Sadio Mané has scored the fastest hat-trick in Premier League history in just two minutes and 56 seconds against Aston Villa on Saturday.',
                        style: GoogleFonts.nunito(
                          fontSize: size.height * .018,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Button(
                    label: 'Next',
                    textStyle: GoogleFonts.nunito(
                      color: UIColors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: size.height * .02,
                    ),
                    height: size.height * .062,
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.trueFalseQuestion);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
