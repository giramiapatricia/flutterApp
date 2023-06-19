import 'package:flutter/material.dart';
import 'BottomNav.dart';

void main() {
  runApp(const BottomNavigationBarExampleApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/back.png"), fit: BoxFit.cover),
            // fit: BoxFit.cover,
            color: Color.fromARGB(0, 35, 78, 82),
          ),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: const SizedBox(
                    width: 380,
                    child: Text(
                      'Good morning Everyone',
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Raleway',
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  )),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const SizedBox(
                  child: TextField(
                    style: TextStyle(color: Color.fromARGB(255, 19, 19, 19)),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search_outlined),
                      iconColor: Colors.white,
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      hintText: ' Search... ',
                      contentPadding:
                          EdgeInsets.only(left: 30, top: 20, bottom: 20),
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(
                              width: 4,
                              color: Color.fromARGB(255, 255, 255, 255))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(0, 84, 202, 151))),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                margin: const EdgeInsets.only(top: 16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(7.5),
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 173, 173, 173),
                                  blurRadius: 2,
                                  offset: Offset(0, 1), // Shadow position
                                ),
                              ],
                            ),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  child: Image(
                                      height: 100,
                                      image: AssetImage("assets/cabbage.jpeg")),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'Cabbage',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ),
                                Container(
                                    color:
                                        const Color.fromARGB(255, 250, 140, 49),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        '\$20',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            backgroundColor: Color.fromARGB(
                                                255, 250, 140, 49),
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    )),
                              ],
                            )),
                      ),
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(7.5),
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 173, 173, 173),
                                  blurRadius: 2,
                                  offset: Offset(0, 1), // Shadow position
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  child: Image(
                                      height: 100,
                                      image:
                                          AssetImage("assets/pineapple.jpeg")),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'Pineapple',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ),
                                Container(
                                    color:
                                        const Color.fromARGB(255, 250, 140, 49),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        '\$37',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            backgroundColor: Color.fromARGB(
                                                255, 250, 140, 49),
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    )),
                              ],
                            )),
                      ),
                    ]),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(7.5),
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 173, 173, 173),
                                  blurRadius: 2,
                                  offset: Offset(0, 1), // Shadow position
                                ),
                              ],
                            ),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  child: Image(
                                      height: 100,
                                      image: AssetImage("assets/brocoli.jpeg")),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'Brocoli',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ),
                                Container(
                                    color:
                                        const Color.fromARGB(255, 250, 140, 49),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        '\$30',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            backgroundColor: Color.fromARGB(
                                                255, 250, 140, 49),
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    )),
                              ],
                            )),
                      ),
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(7.5),
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 173, 173, 173),
                                  blurRadius: 2,
                                  offset: Offset(0, 1), // Shadow position
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  child: Image(
                                      image: AssetImage("assets/banana.jpeg")),
                                  height: 100,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'Banana',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ),
                                Container(
                                    color:
                                        const Color.fromARGB(255, 250, 140, 49),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        '\$25',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            backgroundColor: Color.fromARGB(
                                                255, 250, 140, 49),
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    )),
                              ],
                            )),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
