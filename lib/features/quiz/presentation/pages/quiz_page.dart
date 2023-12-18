import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_flutter/core/services/routes/routes.dart';
import 'package:quiz_app_flutter/core/theme/colors.dart';
import 'package:quiz_app_flutter/core/utils/assets.dart';
import 'package:quiz_app_flutter/features/quiz/presentation/widgets/options_widget.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
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
                  Container(
                    width: size.width * .13,
                    height: size.width * .09,
                    decoration: BoxDecoration(
                      color: UIColors.purpleLight.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.person,
                            color: UIColors.white,
                            size: 20,
                          ),
                        ),
                        Text(
                          '1',
                          style: GoogleFonts.nunito(
                            color: UIColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * .5,
                    padding: const EdgeInsets.all(16),
                    child: LinearProgressIndicator(
                      backgroundColor: UIColors.purpleLight.withOpacity(0.5),
                      color: UIColors.white,
                      value: 0.2,
                    ),
                  ),
                  Container(
                    width: size.width * .15,
                    height: size.width * .09,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SvgPicture.asset(
                            Assets.awardLogo,
                            height: size.height * .022,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '35',
                          style: GoogleFonts.nunito(
                            color: UIColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(
                              value: 0.6,
                              strokeWidth: size.width * .1,
                              color: Colors.pink.withOpacity(0.5),
                              backgroundColor:
                                  Colors.pinkAccent.withOpacity(0.1),
                            ),
                          ),
                          Positioned(
                            left: size.width * .059,
                            top: size.height * .015,
                            child: Text(
                              '6',
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: size.height * .035,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, Routes.answerExplanation);
                        },
                        child: OptionsWidget(
                          isClicked: true,
                          options: 'Robin van Persie',
                        ),
                      ),
                      OptionsWidget(
                        options: 'Sadio Mane',
                      ),
                      OptionsWidget(
                        options: 'Harry Kane',
                      ),
                      OptionsWidget(
                        options: 'Cristiano Bentake',
                      ),
                    ],
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
