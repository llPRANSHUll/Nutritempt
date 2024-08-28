import 'package:flutter/material.dart';
import 'package:nutriapp/constant/colors.dart';

class ResponsePage extends StatefulWidget {
  const ResponsePage({Key? key}) : super(key: key);

  @override
  State<ResponsePage> createState() => _ResponsePageState();
}

class _ResponsePageState extends State<ResponsePage> {
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
                  Text("Waiting For Your Response", style: TextStyle(color: ColorClass.baseColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
              SizedBox(height: 150,),
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shadowColor: ColorClass.darkGrey,
                                  backgroundColor: Color(0xFF7BCC65),
                                  shape: CircleBorder(),
                                  fixedSize: Size(80, 80),
                                  padding: EdgeInsets.all(14),
                                ),
                                onPressed: () {},
                                child: Icon(
                                  Icons.play_arrow_rounded,
                                  color: ColorClass.baseColor,
                                  size: 50,
                                )
                            ),
                          ),
                          SizedBox(height: 50,),
                          Text(
                            'Continue',
                            style: TextStyle(color: ColorClass.baseColor,
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
                      SizedBox(width: 100,),
                      Column(
                        children: [
                          Container(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shadowColor: ColorClass.darkGrey,
                                  backgroundColor: Color(0xFFFF958E),
                                  shape: CircleBorder(),
                                  fixedSize: Size(80, 80),
                                  padding: EdgeInsets.all(14),
                                ),
                                onPressed: () {},
                                child: Icon(
                                  Icons.stop_rounded,
                                  color: Color(0xFFC10E0E),
                                  size: 50,
                                )
                            ),
                          ),
                          SizedBox(height: 50,),
                          Text(
                            'Stop',
                            style: TextStyle(color: Color(0xFFC10E0E),
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
                    ],
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
