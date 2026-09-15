import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 33, 243),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.white, size: 33,)),
        title: Text(
          "Gesture Playground",
          style: TextStyle(
            // fontFamily: myfont,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(Icons.info, color: Colors.white),
          ),
        ],
      ),

      body: Column(
        children: [
          SizedBox(height: 20),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    radius: 45,
                    child: Icon(
                      Icons.touch_app_outlined,
                      size: 55,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Text(
                  "Tap Gestures",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),

                SizedBox(width: 50),

                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tap');
                  },
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 33,),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 54, 35, 201),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    radius: 45,
                    child: Icon(
                      Icons.swap_horiz,
                      size: 55,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Text(
                  "Horizontal Drag",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),

                SizedBox(width: 23),

                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/horizontal');
                  },
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 33,),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 5, 166, 11),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    radius: 45,
                    child: Icon(
                      Icons.swap_calls,
                      size: 55,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Text(
                  "Move Anywhere",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),

                SizedBox(width: 20),

                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/move');
                  },
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 33,),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 243, 100, 24),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    radius: 45,
                    child: Icon(
                      Icons.zoom_in,
                      size: 55,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Text(
                  "Pinch & Zoom",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),

                SizedBox(width: 40),

                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/zoom');
                  },
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 33,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
