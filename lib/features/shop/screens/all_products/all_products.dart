import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/products/sortable/sortable_products.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SukjunubAppBar(
          title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: SukjunubSortableProducts(),
        ),
      ),
    );
  }
}
