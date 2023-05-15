import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List name = ["Tasty Donut", "Pink Donut", "Floating Donut"];
  List image = ["tastydonut", "pinkdonut", "floatingdonut"];
  List money = ["\$10.00", "\210.00", "\$30.00"];
  List<Color> bgcolor = [
    Colors.orange.shade100,
    Colors.pink.shade300,
    Colors.purple.shade200,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("images/people.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(children: [
                SizedBox(width: 20),
                Text(
                  "Welcome,Jalab",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ]),
              SizedBox(height: 10),
              Row(children: [
                SizedBox(width: 20),
                Text(
                  "Choice your best food",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ]),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        width: 222,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.amber,
                                spreadRadius: 2,
                                blurRadius: 2,
                              )
                            ]),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Search food",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(5)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Donut",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow,
                            blurRadius: 2,
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Pink Donut",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow,
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Floating",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 500,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: name.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow,
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                )
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 80,
                                  width: 80,
                                  color: bgcolor[index],
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "images/${image[index]}.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      width: 200,
                                      color: Colors.transparent,
                                      margin: EdgeInsets.only(
                                          top: 5, bottom: 5, left: 10),
                                      child: Column(
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "${name[index]}",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Spicy Tasty Donut family",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "${money[index]}",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Positioned(child: Container()),
                                    Positioned(
                                      right: 10,
                                      bottom: 10,
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(50))),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.amber,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.post_add_sharp), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_sharp), label: "")
            ]),
      ),
    );
  }
}
