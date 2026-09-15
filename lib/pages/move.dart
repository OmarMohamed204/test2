import 'package:flutter/material.dart';

class Move extends StatefulWidget {
  const Move({super.key});

  @override
  State<Move> createState() => _MoveState();
}

class _MoveState extends State<Move> {
  Offset _offset = Offset(50, 50);

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

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home_outlined, size: 32),
      ),

      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            _offset += details.delta;
          });
        },
        child: Stack(
          children: [
            Positioned(
              left: _offset.dy,
              top: _offset.dx,
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 198, 9, 176),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Drag\n  Me",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
