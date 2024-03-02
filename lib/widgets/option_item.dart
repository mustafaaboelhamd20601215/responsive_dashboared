import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboared/models/options_model.dart';
import 'package:responsive_dashboared/utils/app_styles.dart';

class OptionsItem extends StatelessWidget {
  const OptionsItem({
    super.key,
    required this.optionsModel,
    required this.isActive,
  });

  final OptionsModel optionsModel;

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveOptionItem(optionsModel: optionsModel)
        : InActiveOptinItem(
            optionsModel: optionsModel,
          );
  }
}

class ActiveOptionItem extends StatelessWidget {
  const ActiveOptionItem({
    super.key,
    required this.optionsModel,
  });

  final OptionsModel optionsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      child: ListTile(
        title: Text(
          optionsModel.title,
          style: AppStyles.styleBold16(context),
        ),
        leading: SvgPicture.asset(optionsModel.image),
        trailing: Container(
          color: const Color.fromARGB(255, 6, 184, 255),
          width: 3.27,
        ),
      ),
    );
  }
}

class InActiveOptinItem extends StatelessWidget {
  const InActiveOptinItem({
    super.key,
    required this.optionsModel,
  });

  final OptionsModel optionsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      child: ListTile(
        title: Text(
          optionsModel.title,
          style: AppStyles.styleMedium16(context),
        ),
        leading: SvgPicture.asset(optionsModel.image),
      ),
    );
  }
}
