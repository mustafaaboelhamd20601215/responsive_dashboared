


import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
   const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.computerLayout});

  final WidgetBuilder mobileLayout, tabletLayout, computerLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contrains) {
      if (contrains.maxWidth < 600) {
        return mobileLayout(context);
      } else if (contrains.maxWidth < 900) {
        return tabletLayout(context);
      } else {
        return computerLayout(context);
      }
    });
  }
}