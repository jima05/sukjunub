import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/features/personalization/screens/address/add_new_address.dart';
import 'package:sukjunub/features/personalization/screens/address/widgets/single_address.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: SukjunubColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color: SukjunubColors.white),
      ),
      appBar: SukjunubAppBar(
        showBackArrow: true,
        title:
            Text('Address', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: const SingleChildScrollView(padding: EdgeInsets.all(SukjunubSizes.defaultSpace),
      child: Column(
        children: [
          SukjunubSingleAddress(selectedAddress: true),
          SukjunubSingleAddress(selectedAddress: false),
        ],
      ),),
    );
  }
}
