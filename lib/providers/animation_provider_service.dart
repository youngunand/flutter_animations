import 'package:flutter/material.dart';

class AnimationProviderService extends ChangeNotifier {
  double containerHeight = 200;
  double containerWidth = 300;
  Color containerColor = const Color.fromRGBO(100, 100, 100, 100);

  void startContainerAnimation() {
    final previosContainerHeight = containerHeight;
    containerHeight = containerWidth;
    containerWidth = previosContainerHeight;
    containerColor = containerColor
        .withBlue(containerColor.blue + 50)
        .withRed(containerColor.red - 20)
        .withGreen(containerColor.green + 20);
    notifyListeners();
  }
}
