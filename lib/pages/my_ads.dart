import 'package:flutter/material.dart';

class My_Ads_S extends StatelessWidget {
  const My_Ads_S({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Ads',
            style: TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.black,
            dividerColor: Colors.black,
            unselectedLabelColor: Colors.black54,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                text: "My Ads",
                icon: Icon(Icons.shopping_basket_outlined, color: Colors.black),
              ),
              Tab(
                text: "Favorite",
                icon: Icon(Icons.favorite_border, color: Colors.black),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [_Custom_Ads(), _Custom_Ads()],
                    ),
                    Row(
                      children: [_Custom_Ads(), _Custom_Ads()],
                    ),
                    Row(
                      children: [_Custom_Ads(), _Custom_Ads()],
                    ),
                    Row(
                      children: [_Custom_Ads(), _Custom_Ads()],
                    ),
                    Row(
                      children: [_Custom_Ads(), _Custom_Ads()],
                    ),
                    Row(
                      children: [_Custom_Ads(), _Custom_Ads()],
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                    _Custom_CArd(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _Custom_Ads() {
  return Expanded(
      child: Container(
    height: 250,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 15,
          color: Colors.white,
          child: Container(
            height: 200,
          ),
        ),
        Positioned(
            top: 10,
            child: Image.asset(
              "asset/image/watch.png",
              height: 100,
            )),
        const Positioned(
            bottom: 40,
            child: Column(
              children: [
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
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ))
      ],
    ),
  ));
}

// ignore: non_constant_identifier_names
Widget _Custom_CArd() {
  return SizedBox(
      height: 90,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 20,
        child: Row(
          children: [
            const SizedBox(width: 20),
            Image.asset(
              "asset/image/watch.png",
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apple Watch.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Series 6, red",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 30),
            const Text(
              "\$ 400",
              style: TextStyle(
                  color: Colors.red, fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ));
}
