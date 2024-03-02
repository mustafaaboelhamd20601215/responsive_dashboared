

import 'package:flutter/material.dart';
import 'package:responsive_dashboared/widgets/adaptive_layout.dart';
import 'package:responsive_dashboared/widgets/computer_layout.dart';

class HomeVeiw extends StatelessWidget {
  const HomeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  AdaptiveLayout(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const SizedBox(),
      computerLayout: (context) => const ComputerLayout(),
    ),
      
    );
  }
}