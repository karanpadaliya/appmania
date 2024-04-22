import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.green,
            Colors.greenAccent,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(top: 280),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.green),
                ),
                padding: EdgeInsets.only(top: 140, left: 180),
                child: Text(
                  "- 1 +",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 280 - 125,
              right: 0,
              left: 0,
              child: Image.asset(
                'Images/Avocada_salad.png',
                height: 230,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
