import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sukjunub/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:sukjunub/utils/constants/colors.dart';

class SukjunubPrimaryHeaderContainer extends StatelessWidget {
  const SukjunubPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SukjunubCurvedEdgesWidget(
      child: Container(
        color: SukjunubColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          // if [size.isFinite: is not 'true' in stack] error occured
          child: Stack(
            children: [
          // Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: SukjunubCircularContainer(
                    backgroundColor: SukjunubColors.textWhite.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: SukjunubCircularContainer(
                    backgroundColor: SukjunubColors.textWhite.withOpacity(0.1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
