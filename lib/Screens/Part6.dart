import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

class page_six extends StatefulWidget {
  const page_six({super.key});

  @override
  State<page_six> createState() => _page_sixState();
}

class _page_sixState extends State<page_six> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.white,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.white,
                )
            ),


          ],
        ),
      ),


    );
  }
}
