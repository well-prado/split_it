import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

// Create enum that defines the animated properties
enum AniProps { x, y, color }

class LoginAnimation extends StatelessWidget {
  // Specify your tween
  final _tween = TimelineTween<AniProps>()
    ..addScene(begin: 0.seconds, duration: 1.seconds)
        .animate(
          AniProps.x,
          tween: (-100.0).tweenTo(100.0),
          curve: Curves.easeInOutSine,
        )
        .animate(AniProps.color, tween: Colors.red.tweenTo(Colors.yellow))
    ..addScene(begin: 1.seconds, duration: 1.seconds).animate(
      AniProps.y,
      tween: (-100.0).tweenTo(100.0),
      curve: Curves.easeInOutSine,
    )
    ..addScene(begin: 2.seconds, duration: 1.seconds).animate(
      AniProps.x,
      tween: (100.0).tweenTo(-100.0),
      curve: Curves.easeInOutSine,
    )
    ..addScene(begin: 1.seconds, end: 3.seconds)
        .animate(AniProps.color, tween: Colors.yellow.tweenTo(Colors.blue))
    ..addScene(begin: 3.seconds, duration: 1.seconds)
        .animate(
          AniProps.y,
          tween: (100.0).tweenTo(-100.0),
          curve: Curves.easeInOutSine,
        )
        .animate(AniProps.color, tween: Colors.blue.tweenTo(Colors.red));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: LoopAnimation<TimelineValue<AniProps>>(
            tween: _tween, // Pass in tween
            duration: _tween.duration, // Obtain duration
            builder: (context, child, value) {
              return Transform.translate(
                // Get animated offset
                offset: Offset(value.get(AniProps.x), value.get(AniProps.y)),
                child: Image.asset(
                  "assets/images/rectangle-right-big.png",
                  width: 240,
                  height: 128,
                ),
                // child: Container(
                //   width: 100,
                //   height: 100,
                //   color: value.get(AniProps.color), // Get animated color
                // ),
              );
            },
          ),
        ),
      ),
    );
  }
}
