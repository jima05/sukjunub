import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/device/device_utility.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubTabBar extends StatelessWidget implements PreferredSizeWidget {
  const SukjunubTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? SukjunubColors.black : SukjunubColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: SukjunubColors.primary,
        unselectedLabelColor: SukjunubColors.darkGrey,
        labelColor: dark
            ? SukjunubColors.white
            : SukjunubColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(SukjunubDeviceUtils.getAppBarHeight());
}
