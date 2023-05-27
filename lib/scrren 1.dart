import 'package:flutter/material.dart';

class ScreenArguments<String> {
  String image;
  String name;
  String realName;
  String Des;

  ScreenArguments(this.image, this.name, this.realName, this.Des);
}

class screen2 extends StatelessWidget {
  /* late String name;
  late String reaName;
  late String image;
  late String Des;

  screen2(
    this.name,
    this.reaName,
    this.Des,
    this.image, {
    Key? key,
  }) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
              height: 400,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: const Color(0xffffffff), boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: const Offset(0, 5),
                  blurRadius: 8,
                  spreadRadius: 0.1,
                )
              ]),
              child: Image.asset(
                args.image,
                // fit: BoxFit.cover,
                height: 400,
                width: 250,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 104,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(color: const Color(0xffffffff), boxShadow: [
                BoxShadow(
                  color: Colors.redAccent.withOpacity(0.5),
                  offset: const Offset(0, 5),
                  blurRadius: 8,
                  spreadRadius: 0.1,
                )
              ]),
              child: Column(
                children: [
                  Text(
                    args.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 35,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    args.Des,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 20,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 535,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: const Color(0xffffffff), boxShadow: [
                BoxShadow(
                  color: Colors.teal.withOpacity(0.5),
                  offset: const Offset(0, 5),
                  blurRadius: 8,
                  spreadRadius: 0.1,
                )
              ]),
              child: Text(
                args.realName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
