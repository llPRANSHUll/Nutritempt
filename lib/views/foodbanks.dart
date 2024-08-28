import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutriapp/constant/colors.dart';

class FoodBanks extends StatefulWidget {
  const FoodBanks({super.key});

  @override
  State<FoodBanks> createState() => _FoodBanksState();
}

class _FoodBanksState extends State<FoodBanks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  'Food Banks',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: Container(
                  height: 50, // Set the desired height
                  padding: EdgeInsets.symmetric(
                      horizontal: 20), // Add padding for the text field
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(
                          2.0,
                          2.0,
                        ),
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                    ],
                  ),
                  child: TextField(
                    onSubmitted: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      labelText: '',
                      isDense: true, // Reduce the height of the input field
                      contentPadding:
                          EdgeInsets.zero, // Remove any additional padding
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Expanded(
                child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
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
                                    fontSize: 18, fontWeight: FontWeight.w500),
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
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorClass.baseColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
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
    );
  }
}
