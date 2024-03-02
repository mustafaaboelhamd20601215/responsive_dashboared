import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboared/utils/app_images.dart';
import 'package:responsive_dashboared/utils/app_styles.dart';

import 'package:responsive_dashboared/widgets/options_veiw.dart';

class ComputerLayout extends StatelessWidget {
  const ComputerLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      body: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(color: Colors.white, child: const OptionsVeiw())),
              const SizedBox(width: 32,),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Al Expenses",
                                style: AppStyles.styleSemiBold16(context)),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Text(
                                    "Monthly",
                                    style: AppStyles.styleMedium16(context),
                                  ),
                                  Transform.rotate(
                                    angle: -1.57079633,
                                    child:
                                        const Icon(Icons.arrow_back_ios_new_outlined),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: const Color.fromARGB(
                                                255, 248, 248, 248)),
                                        child: Center(
                                            child: SvgPicture.asset(
                                                Assets.imgBalance)),
                                      ),
                                      const SizedBox(
                                        width: 65,
                                      ),
                                      const Icon(Icons.arrow_forward_ios_outlined)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "title",
                                    style: AppStyles.styleBold16(context),
                                  ),
                                  const Text("subtitle"),
                                  const Text("price")
                                ],
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
              )),
        ],
      ),
    );
  }
}
