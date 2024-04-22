import 'package:flutter/material.dart';

const double minHeight = 120;
const double iconStartSize = 44;
const double iconEndSize = 120;
const double iconStartMarginTop = 36;
const double iconEndMarginTop = 80;
const double iconsVerticalSpacing = 24;
const double iconsHorizontalSpacing = 16;

class ScrollableExhibitionBottomPanel extends StatefulWidget {
  
  const ScrollableExhibitionBottomPanel({super.key});

  @override
  State<ScrollableExhibitionBottomPanel> createState() => _ScrollableExhibitionBottomPanelState();
}

class _ScrollableExhibitionBottomPanelState extends State<ScrollableExhibitionBottomPanel> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          color: Colors.limeAccent,
          height: minHeight,
          width: double.infinity,
      ),
    );
  }
}