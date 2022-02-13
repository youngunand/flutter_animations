import 'package:flutter/material.dart';
import 'package:flutter_animations/providers/animation_provider_service.dart';
import 'package:flutter_animations/widgets/animations/container_animation.dart';
import 'package:flutter_animations/widgets/curves/sinus_curve.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AnimationProviderService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter animations"),
      ),
      body: Container(
        padding:const EdgeInsets.all(25),
        child: Stack(
          children: [
            Center(
              child: ContainerAnimation(provider: provider, curve: const SinusCurve(frequency: 1.5)),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: 70,
                child: ElevatedButton(
                  
                  child: const Text("Start cool Animation"),
                  onPressed: () => provider.startContainerAnimation(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
