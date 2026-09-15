import 'package:flutter/material.dart';

class HorizontalGestures extends StatefulWidget {
  const HorizontalGestures({super.key});

  @override
  State<HorizontalGestures> createState() => _HorizontalGesturesState();
}

class _HorizontalGesturesState extends State<HorizontalGestures> {
  double _xOffset = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 33, 243),
        centerTitle: true,
        title: Text(
          "Tap Gestures",
          style: TextStyle(
            // fontFamily: myfont,
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(Icons.info, color: Colors.white),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home_outlined, size: 32),
      ),

      body: Center(
        child: Stack(
          children: [
            const Positioned(left: 1, top: 30, child: Icon(Icons.arrow_back)),
            const Positioned(right: 1, top: 30, child: Icon(Icons.arrow_forward)),
            GestureDetector(
              onHorizontalDragUpdate: ((details) {
                setState(() {
                  _xOffset += details.delta.dx;
                });
              }),
              child: Transform.translate(
                offset: Offset(_xOffset, 0),
                child: Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 9, 198, 15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Drag Me",
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
