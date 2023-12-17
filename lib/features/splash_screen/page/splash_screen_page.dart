import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_flutter/core/theme/colors.dart';
import 'package:quiz_app_flutter/core/utils/assets.dart';
import 'package:quiz_app_flutter/features/shared/widgets/circle_border.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: UIColors.purple,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  Assets.appLogo,
                  scale: 3,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.sp),
                child: Text(
                  'Queezy',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 36.sp,
                    color: UIColors.white,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: size.height * .25,
            left: size.width * .1,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: const Color(0xffC4D0FB).withOpacity(0.1),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 120.0,
              height: 240.0,
              decoration: BoxDecoration(
                color: const Color(0xffC4D0FB).withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(200.0),
                  bottomRight: Radius.circular(200.0),
                ),
              ),
            ),
          ),
          CircleOneSideBorder(
            isBottomLeft: true,
            positionedBottom: -80,
            positionedRight: 0,
            containerHeight: 400,
            containerWidth: 200,
            radius: 200,
          ),
          Positioned(
            top: 34.5.h,
            right: 0,
            child: Container(
              width: 120.0,
              height: 240.0,
              decoration: BoxDecoration(
                color: const Color(0xffC4D0FB).withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(200.0),
                  bottomLeft: Radius.circular(200.0),
                ),
              ),
            ),
          ),
          CircleOneSideBorder(
            isTopRight: true,
            positionedTop: -40,
            positionedRight: 0,
            containerHeight: 400,
            containerWidth: 200,
            radius: 200,
          ),
        ],
      ),
    );
  }
}
