import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sukjunub/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/device/device_utility.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SukjunubPrimaryHeaderContainer(
                child: Column(
              children: [
                // AppBar
                SukjunubHomeAppBar(),
                SizedBox(height: SukjunubSizes.spaceBtwSections),
                // SearchBar
                SukjunubSearchContainer(text: 'Search in Store',),
                // Categories
              ],
            )),
          ],
        ),
      ),
    );
  }
}

