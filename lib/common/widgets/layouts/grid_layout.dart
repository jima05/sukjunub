import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SukjunubGridLayout extends StatelessWidget {
  const SukjunubGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtend = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtend;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: SukjunubSizes.gridViewSpacing,
        crossAxisSpacing: SukjunubSizes.gridViewSpacing,
        mainAxisExtent: 288,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
