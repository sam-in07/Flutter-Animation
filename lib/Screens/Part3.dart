import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

import 'Part4.dart';

class page_three extends StatefulWidget {
  const page_three({super.key});

  @override
  State<page_three> createState() => _page_threeState();
}

class _page_threeState extends State<page_three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Text("Hello Animation").animate().toggle(
                  duration: 10.seconds,
                  builder: (_,value,_){
                    return Text(
                      value? "01":"02",
                      style: TextStyle(fontSize: 100),
                    );
                  }
              )

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
              'Go to Page f',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),


    );
  }
}
