import 'package:awesome_doctor_ui/constants.dart';
import 'package:awesome_doctor_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class BottomNavigation extends StatelessWidget {
  final List<IconData> itemsIcon;
  final IconData centerIcon;
  final int selectedIndex;
  final Function(int) onItemPressed;

  const BottomNavigation({
    super.key,
    required this.itemsIcon,
    required this.centerIcon,
    required this.selectedIndex,
    required this.onItemPressed,
  }) : assert(itemsIcon.length != 3, "Items must equal to 4");

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getRelativeHeight(0.1),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: getRelativeHeight(0.08),
              color: Colors.white,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getRelativeWidth(0.1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              onItemPressed(0);
                            },
                            child: Icon(
                              itemsIcon[0],
                              color: selectedIndex == 0
                                  ? kPrimaryDarkColor
                                  : kLightTextColor,
                              size: getRelativeWidth(0.07),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              onItemPressed(1);
                            },
                            child: Icon(
                              itemsIcon[1],
                              color: selectedIndex == 1
                                  ? kPrimaryDarkColor
                                  : kLightTextColor,
                              size: getRelativeWidth(0.07),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 3),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              onItemPressed(2);
                            },
                            child: Icon(
                              itemsIcon[2],
                              color: selectedIndex == 2
                                  ? kPrimaryDarkColor
                                  : kLightTextColor,
                              size: getRelativeWidth(0.07),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              onItemPressed(3);
                            },
                            child: Icon(
                              itemsIcon[3],
                              color: selectedIndex == 3
                                  ? kPrimaryDarkColor
                                  : kLightTextColor,
                              size: getRelativeWidth(0.07),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Transform.rotate(
                angle: -math.pi / 4,
                child: Container(
                  width: getRelativeWidth(0.135),
                  height: getRelativeWidth(0.135),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 25,
                        offset: const Offset(0, 5),
                        color: kPrimaryDarkColor.withOpacity(0.75),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(18),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        kPrimaryLightColor,
                        kPrimaryDarkColor,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Transform.rotate(
                      angle: math.pi / 4,
                      child: Icon(
                        centerIcon,
                        color: Colors.white,
                        size: getRelativeWidth(0.07),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
