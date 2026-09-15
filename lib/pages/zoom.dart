import 'package:flutter/material.dart';

class Zoom extends StatefulWidget {
  const Zoom({super.key});

  @override
  State<Zoom> createState() => _ZoomState();
}

class _ZoomState extends State<Zoom> {
  double _scale = 1.0;
  double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 33, 243),
        centerTitle: true,
        title: Text(
          "Move Anywhere",
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

      body: Center(
        child: GestureDetector(
          onScaleStart: (details) {
            _previousScale = _scale;
          },
          onScaleUpdate: (details) {
            setState(() {
              _scale = _previousScale * details.scale;
              _scale = _scale.clamp(0.5, 3.0);
            });
          },
          onScaleEnd: (details) {
            _previousScale = 1.0;
          },
          child: Transform.scale(
            scale: _scale,
            child: Container(
              width: double.infinity,
              height: 400,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 11, 21, 205),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Text(
                  "Zoom Me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home_outlined, size: 32),
      ),
    );
  }
}
