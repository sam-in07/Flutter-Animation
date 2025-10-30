import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class page_four extends StatefulWidget {
  const page_four({super.key});

  @override
  State<page_four> createState() => _page_fourState();
}

class _page_fourState extends State<page_four> {
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
          TextButton(
            onPressed: () {
              // Navigate to Part2 page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page_four()),
              );
            },
            child: Text(
              'Go to Page Two',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),


    );
  }
}
