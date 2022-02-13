import 'package:flutter/material.dart';
import 'package:flutter_animations/providers/animation_provider_service.dart';

class ContainerAnimation extends StatelessWidget {
  const ContainerAnimation({
    Key? key,
    required this.provider,
    required Curve curve,
  }) : _containerCurve = curve, super(key: key);

  final AnimationProviderService provider;
  final Curve _containerCurve;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: provider.containerHeight,
      width: provider.containerWidth,
      color: provider.containerColor,
      curve: _containerCurve,
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 500),
      child: const Text(
        "Animation",
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }
}
