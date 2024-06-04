import 'package:flutter/material.dart';
import 'package:flutter_confetti/confetti_screen.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset('images/mainLogo.png'),
            const SizedBox(
              height: 100,
            ),
            SlideAction(
              borderRadius: 12,
              innerColor: Colors.deepPurple,
              outerColor: Colors.deepPurple[200],
              sliderButtonIcon: const Icon(
                Icons.lock_open,
                color: Colors.white,
              ),
              text: 'Slide For Surprise',
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
              // ignore: body_might_complete_normally_nullable
              onSubmit: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConfettiScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
