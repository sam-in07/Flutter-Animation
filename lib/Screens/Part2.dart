import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

import 'Part3.dart';

class page_two extends StatefulWidget {
  const page_two({super.key});

  @override
  State<page_two> createState() => _page_twoState();
}

class _page_twoState extends State<page_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('Hello Page Two' ,style:
            const TextStyle(fontSize: 32), ).
            animate().fade(duration:100.ms).
            scale(delay: 1000.ms),
          ),
          SizedBox(height: 4,) ,
          Column(children: AnimateList(
            interval: 2000.ms,
            effects: [FadeEffect(duration: 1900.ms)],
            children: [Text("Samin"), Text("Baka"),  Text("Chan")],
          )),
          SizedBox(height: 4,) ,

          // SizedBox(height: 4,) ,
          TextButton(
            onPressed: () {
              // Navigate to Part2 page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page_three()),
              );
            },
            child: Text(
              'Go to Page three',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),


    );
  }
}






/*

// Delay, duration, curve

Text("Hello").animate()
  .fade(duration: 500.ms)
  .scale(delay: 500.ms) // runs after fade.

Text("Hello World!").animate()
  .fadeIn() // uses `Animate.defaultDuration`
  .scale() // inherits duration from fadeIn
  .move(delay: 300.ms, duration: 600.ms) // runs after the above w/new duration
  .blurXY() // inherits the delay & duration from move

Text("Hello").animate(
    delay: 1000.ms, // this delay only happens once at the very start
    onPlay: (controller) => controller.repeat(), // loop
  ).fadeIn(delay: 500.ms) // this delay happens at the start of each loop

Text("Hello").animate().fade() // begin=0, end=1
Text("Hello").animate().fade(begin: 0.5) // end=1
Text("Hello").animate().fade(end: 0.5) // begin=1


//

 */


//Animating lists
/*
Column(children: AnimateList(
  interval: 400.ms,
  effects: [FadeEffect(duration: 300.ms)],
  children: [Text("Hello"), Text("World"),  Text("Goodbye")],
))

 */


//