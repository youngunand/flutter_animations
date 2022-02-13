import 'package:flutter/material.dart';
import 'package:flutter_animations/homescreen/homescreen.dart';
import 'package:flutter_animations/providers/animation_provider_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(home: ChangeNotifierProvider(
    create: (context) => AnimationProviderService(),
    child: const HomeScreen())));
}
