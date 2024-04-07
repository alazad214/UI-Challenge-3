import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home_S extends StatelessWidget {
  const Home_S({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Azad",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Text("Let's gets something?"),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Custom_Container(Colors.orange),
                        Custom_Container(Colors.blue),
                        Custom_Container(Colors.greenAccent),
                        Custom_Container(Colors.pink),
                        Custom_Container(Colors.cyanAccent),
                        Custom_Container(Colors.lightBlue),
                        Custom_Container(Colors.purpleAccent),
                        Custom_Container(Colors.brown),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Categaries ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "View all ",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _Custom_Button("Food"),
                        _Custom_Button("Electronics"),
                        _Custom_Button("Groceries"),
                        _Custom_Button("Toy"),
                        _Custom_Button("Sunglass"),
                        _Custom_Button("Watch"),
                        _Custom_Button("Mobile"),
                        _Custom_Button("Shirt"),
                        _Custom_Button("Pen"),
                        _Custom_Button("Education"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    _Custom_Product(),
                    _Custom_Product(),
                  ],
                ),
                Row(
                  children: [
                    _Custom_Product(),
                    _Custom_Product(),
                  ],
                ),
                Row(
                  children: [
                    _Custom_Product(),
                    _Custom_Product(),
                  ],
                ),
                Row(
                  children: [
                    _Custom_Product(),
                    _Custom_Product(),
                  ],
                ),
                Row(
                  children: [
                    _Custom_Product(),
                    _Custom_Product(),
                  ],
                ),
                Row(
                  children: [
                    _Custom_Product(),
                    _Custom_Product(),
                  ],
                ),
                Row(
                  children: [
                    _Custom_Product(),
                    _Custom_Product(),
                  ],
                ),
                Row(
                  children: [
                    _Custom_Product(),
                    _Custom_Product(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Custom_Container(color) {
  return Container(
    width: 260,
    child: Card(
      color: color,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "40% Off During ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Text(
              "Covid 19 ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
                child: Image.asset(
                  "asset/image/fruits-and-vegetables.png",
                  height: 40,
                ))
          ],
        ),
      ),
    ),
  );
}

Widget _Custom_Button(text) {
  return Container(
    child: Card(
      color: Colors.black26,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          )),
    ),
  );
}

Widget _Custom_Product() {
  return Expanded(
      child: Container(
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 20,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              "asset/image/watch.png",
              height: 100,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Apple Watch.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "Series 6, red",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "\$ 400",
              style: TextStyle(
                  color: Colors.red, fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    ),
  ));
}
