import 'package:flutter/material.dart';

class CircleOneSideBorder extends StatelessWidget {
  CircleOneSideBorder({
    super.key,
    this.isTopLeft = false,
    this.isTopRight = false,
    this.isBottomLeft = false,
    this.isBottomRight = false,
    this.positionedLeft,
    this.positionedRight,
    this.positionedBottom,
    this.positionedTop,
    this.containerHeight,
    this.containerWidth,
    this.radius,
  });

  bool isTopLeft;
  bool isTopRight;
  bool isBottomLeft;
  bool isBottomRight;
  double? positionedBottom;
  double? positionedTop;
  double? positionedLeft;
  double? positionedRight;
  double? containerWidth;
  double? containerHeight;
  double? radius;

  @override
  Widget build(BuildContext context) {
    return isBottomLeft
        ? Positioned(
            bottom: positionedBottom,
            child: Container(
              width: containerWidth,
              height: containerHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(radius!),
                  bottomRight: Radius.circular(radius!),
                ),
                border: Border(
                  top: BorderSide(
                    color: const Color(0xffC4D0FB).withOpacity(0.2),
                  ),
                  right: BorderSide(
                    color: const Color(0xffC4D0FB).withOpacity(0.2),
                  ),
                  bottom: BorderSide(
                    color: const Color(0xffC4D0FB).withOpacity(0.2),
                  ),
                ),
              ),
            ),
          )
        : Positioned(
            top: positionedTop,
            right: positionedRight,
            child: Container(
              width: containerWidth,
              height: containerHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radius!),
                  bottomLeft: Radius.circular(radius!),
                ),
                border: Border(
                  top: BorderSide(
                    color: const Color(0xffC4D0FB).withOpacity(0.2),
                  ),
                  left: BorderSide(
                    color: const Color(0xffC4D0FB).withOpacity(0.2),
                  ),
                  bottom: BorderSide(
                    color: const Color(0xffC4D0FB).withOpacity(0.2),
                  ),
                ),
              ),
            ),
          );
  }
}
