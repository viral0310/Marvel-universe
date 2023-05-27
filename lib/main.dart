import 'package:flutter/material.dart';
import 'package:marvel_universe/scrren 1.dart';
import 'map list.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => myApp(),
        '/pg2': (context) => screen2(),
      },
    ),
  );
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MARVEL UNIVERSE",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            letterSpacing: 5,
            fontWeight: FontWeight.w300,
          ),
        ),
        backgroundColor: const Color(0xff10002b),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xff240046),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 3,
            ),
            Container(
              alignment: const Alignment(-0.8, 1),
              child: const Text(
                "AVENGERS",
                style: TextStyle(color: Colors.white, fontSize: 22),
                // textAlign: TextAlign.left,
              ),
            ),
            Container(
              height: 430,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: avengerList.length,
                separatorBuilder: (context, _) => const SizedBox(
                  width: 10,
                ),
                itemBuilder: (context, index) =>
                    buildCard(item: avengerList[index]),
              ),
            ),
            const Spacer(flex: 5),
          ],
        ),
      ),
    );
  }

  Widget buildCard({required avenger item}) => Container(
        margin: const EdgeInsets.only(top: 30),
        height: 430,
        width: 250,
        //  color: Colors.red,
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    margin: const EdgeInsets.only(top: 60, left: 15),
                    height: 300,
                    width: 240,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [Color(0xff591899), Color(0xff3d096d)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, 0),
                              spreadRadius: 3,
                              blurRadius: 8)
                        ]),
                  ),
                ),
                Positioned(
                  bottom: 150,
                  left: 60,
                  child: Container(
                    height: 200,
                    width: 150,
                    //color: Colors.pink,
                    child: Image.asset(
                      item.image,
                      height: 200,
                      width: 150,
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  left: 20,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 280,
                  left: 20,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      item.realName,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 20,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: (() {
                        Navigator.of(context).pushNamed('/pg2',
                            arguments: ScreenArguments(item.image, item.name,
                                item.description, item.realName));
                      }),
                      style: ElevatedButton.styleFrom(

                          // returns ButtonStyle
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          primary: const Color(0xff160429),
                          onPrimary: Colors.white,
                          shape: const StadiumBorder()),
                      child: const Text("KNOW MORE"),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
}
