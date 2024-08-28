import 'package:flutter/material.dart';
import 'package:nutriapp/constant/colors.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Center(
    child: Container(
      decoration: BoxDecoration(color: Color(0xFF7EC76D)),
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(100),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Customize, ',
                            style: TextStyle(fontSize: 25, color: Colors.black)),
                        Text('Energize',
                            style: TextStyle(fontSize: 25, color: ColorClass.baseColor)),
                        Text(',',
                            style: TextStyle(fontSize: 25, color: Colors.black)),
                      ],
                    ),
                  ),
                  const Text('Optimize',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Precision nutrition, personalized plates—',
                    style: TextStyle(fontSize: 18, color: Colors.black38),
                  ),
                  const Text(
                    'your recipe for a healthier life.',
                    style: TextStyle(fontSize: 18, color: Colors.black38),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/customizesearch");
                      },
                      child: Container(
                        child: const Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorClass.baseColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Container(
              child: Image.asset("assets/images/chef_image.png"),
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.transparent,
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
