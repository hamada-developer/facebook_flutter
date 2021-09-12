import 'package:flutter/material.dart';

main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ScrollController verticalController = ScrollController();
  ScrollController horizontalController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ScrollBar')),
        body: Scrollbar(
            isAlwaysShown: true,
            controller: horizontalController,
            child: SingleChildScrollView(
              controller: horizontalController,
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              child: Scrollbar(
                controller: verticalController,
                isAlwaysShown: true,
                child: SingleChildScrollView(
                  controller: verticalController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            color: Colors.yellow,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.green,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.red,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.green,
                            height: 190,
                            width: 190,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.red,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.blue,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.black,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.yellow,
                            height: 190,
                            width: 190,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.blue,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.green,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.yellow,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.red,
                            height: 190,
                            width: 190,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.black,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.red,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.red,
                            height: 190,
                            width: 190,
                          ),
                          Container(
                            color: Colors.blue,
                            height: 190,
                            width: 190,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
