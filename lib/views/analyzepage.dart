import 'package:flutter/material.dart';
import 'package:nutriapp/constant/colors.dart';

class Analyze extends StatefulWidget {
  const Analyze({Key? key}) : super(key: key);

  @override
  State<Analyze> createState() => _AnalyzeState();
}

class _AnalyzeState extends State<Analyze> {
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
                  Text("Analyzing The Conversation... ", style: TextStyle(color: ColorClass.baseColor, fontSize: 25, fontWeight: FontWeight.bold,),),
                ],
              ),
              SizedBox(height: 150,),
              Center(
                child: Column(
                  children: [
                    Container(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: ColorClass.darkGrey,
                            backgroundColor: ColorClass.baseColor,
                            shape: CircleBorder(),
                            fixedSize: Size(80, 80),
                            padding: EdgeInsets.all(14),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.mic,
                            color: Colors.white,
                            size: 50,
                          )
                      ),
                    ),
                    SizedBox(height: 50,),
                    Text(
                      'Analyzing...',
                      style: TextStyle(color: ColorClass.baseColor,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black26,
                              blurRadius: 1.0,
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                          fontSize: 20),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }


}
