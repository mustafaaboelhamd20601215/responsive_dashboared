import 'package:flutter/material.dart';

import 'package:responsive_dashboared/models/options_model.dart';
import 'package:responsive_dashboared/utils/app_images.dart';

import 'package:responsive_dashboared/widgets/option_item.dart';

class OptionsListVeiw extends StatefulWidget {
  const OptionsListVeiw({
    super.key,
  });

  @override
  State<OptionsListVeiw> createState() => _OptionsListVeiwState();
}

class _OptionsListVeiwState extends State<OptionsListVeiw> {
  List<OptionsModel> options = [
    OptionsModel(title: "Dashboared", image: Assets.imgDashboard),
    OptionsModel(title: "My Transcation", image: Assets.imgMyTransctions),
    OptionsModel(title: "Statics", image: Assets.imgStatistics),
    OptionsModel(title: "Wallet Account", image: Assets.imgWalletAccount),
    OptionsModel(title: "My Investments", image: Assets.imgMyInvestments),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                if (selectedIndex != index) {
                  setState(() {
                    selectedIndex = index;
                    debugPrint(selectedIndex.toString());
                  });
                }
              },
              child: OptionsItem(
                optionsModel: options[index],
                isActive: selectedIndex == index,
              ));
        });
  }
}
