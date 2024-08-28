import 'package:flutter/material.dart';
import 'package:nutriapp/constant/colors.dart';

class Custom_Main extends StatefulWidget {
  const Custom_Main({Key? key}) : super(key: key);

  @override
  State<Custom_Main> createState() => _Custom_MainState();
}

class _Custom_MainState extends State<Custom_Main> {

  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  children: [
                    //  Image.asset(name),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.dehaze_outlined,
                        size: 20,
                        color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFD4F3CB),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(14),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Customize ", style: TextStyle(color: ColorClass.baseColor, fontSize: 25, fontWeight: FontWeight.bold,),),
                  Text('Plate', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,),)
                ],
              ),
              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: const Offset(
                          2.0,
                          2.0,
                        ),
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                    ],
                  ),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                        prefixIcon: Icon(Icons.search),
                        labelText: 'Enter Ingredients/Diseases'),
                  ),
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }


}
