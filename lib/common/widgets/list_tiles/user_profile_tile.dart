
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/images/circular_image.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';

class SukjunubUserProfileTile extends StatelessWidget {
  const SukjunubUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SukjunubCircularImage(
        image: SukjunubImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Jima Benjamin',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: SukjunubColors.white),
      ),
      subtitle: Text(
        'jimabenjamin4@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: SukjunubColors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.edit, color: SukjunubColors.white),
      ),
    );
  }
}
