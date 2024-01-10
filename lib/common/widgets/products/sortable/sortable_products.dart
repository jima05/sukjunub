
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/layouts/grid_layout.dart';
import 'package:sukjunub/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SukjunubSortableProducts extends StatelessWidget {
  const SukjunubSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // DropDown
        DropdownButtonFormField(
          decoration:
              const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popular'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: SukjunubSizes.spaceBtwSections),
    
        // Products
        SukjunubGridLayout(itemCount: 7, itemBuilder: (_,index)=>const SukjunubProductCardVertical()),
    
      ],
    );
  }
}
