import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sukjunub/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:sukjunub/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:sukjunub/common/widgets/texts/section_heading.dart';
import 'package:sukjunub/features/personalization/screens/address/address.dart';
import 'package:sukjunub/features/personalization/screens/profile/profile.dart';
import 'package:sukjunub/features/shop/screens/order/order.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            SukjunubPrimaryHeaderContainer(
                child: Column(
              children: [
                // AppBar
                SukjunubAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: SukjunubColors.white),
                  ),
                ),

                // Profile
                SukjunubUserProfileTile( onPressed: ()=>Get.to(()=> const ProfileScreen())),

                const SizedBox(height: SukjunubSizes.spaceBtwSections),
              ],
            )),
            // Settings Menu
            Padding(
              padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const SukjunubSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: SukjunubSizes.spaceBtwItems,
                  ),

                  SukjunubSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'Set Shopping Delivery Address',
                    onTap: () => Get.to(()=> const UserAddressScreen()),
                  ),
                  SukjunubSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, Remove Products and Move to Checkout',
                    onTap: () {},
                  ),
                  SukjunubSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    onTap: () => Get.to(()=> const OrderScreen()),
                  ),
                  SukjunubSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw Balance to Registered Bank Account',
                    onTap: () {},
                  ),
                  SukjunubSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all Discounted Coupons',
                    onTap: () {},
                  ),
                  SukjunubSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of Notification Message',
                    onTap: () {},
                  ),
                  SukjunubSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage Data Usage and Connected Accounts',
                    onTap: () {},
                  ),

                  // App Settings
                  const SizedBox(height: SukjunubSizes.spaceBtwSections),
                  const SukjunubSectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: SukjunubSizes.spaceBtwItems),
                  SukjunubSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                    onTap: () {},
                  ),
                  // With Trailing
                  SukjunubSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set Recommendation Based on Location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  SukjunubSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search Result is Safe all Ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  SukjunubSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set Image Quality to be Seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  // Logout Button
                  const SizedBox(height: SukjunubSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: SukjunubSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
