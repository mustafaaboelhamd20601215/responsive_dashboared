
import 'package:flutter/material.dart';


import 'package:flutter_svg/svg.dart';

import 'package:responsive_dashboared/utils/app_styles.dart';
import 'package:responsive_dashboared/widgets/options_list_veiw.dart';

class OptionsVeiw extends StatefulWidget {
  const OptionsVeiw({
    super.key,
  });

  @override
  State<OptionsVeiw> createState() => _OptionsVeiwState();
}

class _OptionsVeiwState extends State<OptionsVeiw> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // const SizedBox(
        //   height: 50,
        // ),
        // Container(
        //   height: 50,
        //   width: 200,
        //   color: Colors.grey,
        // ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Card(
              elevation: 0,
              child: ListTile(
                tileColor: const Color(0xfffafafa),
                title: Text(
                  "Mustafa Aboelhamd",
                  style: AppStyles.styleSemiBold16(context),
                ),
                subtitle: const Text(
                  "mustafa.aboelhamd@gmail.com",
                  style: TextStyle(color: Colors.grey),
                ),
                leading: SvgPicture.asset("assets/img/avatar_1.svg"),
              ),
            ),
          ),
        ),
        const OptionsListVeiw(),

        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [

              const Expanded(child: SizedBox()),
              ListTile(
                title: const Text("Setting system"),
                leading: SvgPicture.asset("assets/img/settings.svg"),
              ),
              ListTile(
                title: const Text("Logout account"),
                leading: SvgPicture.asset("assets/img/logout.svg"),
              ),
              const SizedBox(
                height: 48,
              )
            ],
          ),
        ),
      ],
    );
  }
}
