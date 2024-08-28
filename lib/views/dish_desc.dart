import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../constant/colors.dart';
import '../providers/getdishprovider.dart';

class Dish_Description extends StatefulWidget {
  const Dish_Description({super.key});

  @override
  State<Dish_Description> createState() => _Dish_DescriptionState();
}

class _Dish_DescriptionState extends State<Dish_Description> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<GetDishProvider>(
      builder: (context, dishprovider, child) {
        return Scaffold(
          body: Center(
            child: Container(
              // decoration: BoxDecoration(color: ColorClass.lightGreen),
              child: Stack(
                children: [
                  Flexible(
                      child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width * 2,
                    child: Image.network(
                      dishprovider.selecteddish![0]!.image ?? "",
                      fit: BoxFit.fill,
                    ),
                  )),
                  /*
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Row(
                      children: [
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.dehaze_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorClass.baseColor,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  */
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          top: 350,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(100),
                                topLeft: Radius.circular(100),
                              ),
                            ),
                            padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: ColorClass.baseColor,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              MaterialButton(
                                                onPressed: _decrementCounter,
                                                child: Icon(Icons.remove,
                                                    color: Colors.white),
                                              ),
                                              SizedBox(width: 10.0),
                                              AnimatedOpacity(
                                                opacity: _counter != -1 ? 1 : 0,
                                                duration:
                                                    Duration(milliseconds: 500),
                                                child: Text(
                                                  '$_counter',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(width: 10.0),
                                              MaterialButton(
                                                onPressed: _incrementCounter,
                                                child: Icon(Icons.add,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text(
                                        dishprovider.selecteddish?[0].lable!
                                                 ??
                                            "",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(5),
                                      height: 35,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          color: ColorClass.baseColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        "Ingredients",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                SizedBox(height: 20),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 50,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.all(20),
                                        padding: EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: ColorClass.lightGreen,
                                                blurRadius: 5,
                                                offset: Offset(0, 2.5),
                                              )
                                            ]),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Food Banks',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: 45,
                                                    child: const Text(
                                                      'Donate',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        ColorClass.baseColor,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Column(
                                              children: [
                                                Container(
                                                  child: Text('Image'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 20,
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
