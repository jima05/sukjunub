import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/images/circular_image.dart';
import 'package:sukjunub/common/widgets/texts/section_heading.dart';
import 'package:sukjunub/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SukjunubAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SukjunubCircularImage(
                      image: SukjunubImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              //  Details
              const SizedBox(
                height: SukjunubSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(height: SukjunubSizes.spaceBtwItems),

              //  Heading Profile Info
              const SukjunubSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: SukjunubSizes.spaceBtwItems),
              // Details Profile Info
              SukjunubProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Jima Benjamin',
              ),
              SukjunubProfileMenu(
                onPressed: () {},
                title: 'Usename',
                value: 'Jima24',
              ),

              //  Heading Prersonal Info
              const SukjunubSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: SukjunubSizes.spaceBtwItems),
              // Details Personal Info
              SukjunubProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '457253',
                icon: Iconsax.copy,
              ),
              SukjunubProfileMenu(
                onPressed: () {},
                title: 'Email',
                value: 'jimabenjamin4@gmail.com',
              ),
              SukjunubProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '+256-770-458-644',
              ),
              SukjunubProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              SukjunubProfileMenu(
                onPressed: () {},
                title: 'Date Of Birth',
                value: '01-01-2000',
              ),
              const Divider(),
              const SizedBox(height: SukjunubSizes.spaceBtwItems),

              // Delete Button
              Center(
                child: TextButton(onPressed: () {  },
                child: const Text('Delete Account', style: TextStyle(color: Colors.red),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
