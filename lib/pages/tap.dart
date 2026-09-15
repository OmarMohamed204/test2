import 'package:flutter/material.dart';

class TapGestures extends StatefulWidget {
  const TapGestures({super.key});

  @override
  State<TapGestures> createState() => _TapGesturesState();
}

class _TapGesturesState extends State<TapGestures> {
  @override
  String lastAction = "";

  void updateAction(String action) {
    setState(() {
      lastAction = action;
    });
  }

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
        child: Icon(Icons.home_outlined, size: 32,),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => updateAction('Single Tap'),
              onDoubleTap: () => updateAction('Double Tap'),
              onLongPress: () => updateAction('Long Press'),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Interact With Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 37,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Last Action => $lastAction',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
