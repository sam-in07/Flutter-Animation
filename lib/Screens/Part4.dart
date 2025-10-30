import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

import 'Part5.dart';

class page_four extends StatefulWidget {
  const page_four({super.key});

  @override
  State<page_four> createState() => _page_fourState();
}

class _page_fourState extends State<page_four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Center(
                child: Text("This is product item")
                    .animate()
                    .swap(
                    duration: 10000.ms,
                    builder: (_,_)=> Text("Delete !",
                      style: TextStyle(fontSize: 50),
                    )
                )

            ),
            SizedBox(height: 4,) ,
            TextButton(
              onPressed: () {
                // Navigate to Part2 page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page_five()),
                );
              },
              child: Text(
                'Go to Page Two',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
