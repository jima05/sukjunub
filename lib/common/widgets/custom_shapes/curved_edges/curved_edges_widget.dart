import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class SukjunubCurvedEdgesWidget extends StatelessWidget {
  const SukjunubCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SukjunubCustomCurvedEdges(),
      child: child,
    );
  }
}
