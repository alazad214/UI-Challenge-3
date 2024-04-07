import 'package:flutter/material.dart';

class ReUse_S extends StatelessWidget {
  const ReUse_S({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 260,
        child: Card(
          color: Colors.orange,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("40% Off During ", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),),
                Text("Covid 19 ", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),),
                Padding(
                    padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
                    child: Image.asset("asset/image/fruits-and-vegetables.png",height: 40,))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
