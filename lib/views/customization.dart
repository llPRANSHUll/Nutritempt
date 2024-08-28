import 'package:flutter/material.dart';
import 'package:nutriapp/views/dish_desc.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';
import '../providers/getdishprovider.dart';

class Customization extends StatefulWidget {
  const Customization({Key? key}) : super(key: key);

  @override
  State<Customization> createState() => _CustomizationState();
}

class _CustomizationState extends State<Customization> {
  //  void initState() {
  //   super.initState();
  //   Provider.of<GetDishProvider>(context, listen: false).getDish();
  // }
  var controller = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Consumer<GetDishProvider>(
      builder: (context, dishprovider, child) {
        return Scaffold(
          appBar: AppBar(backgroundColor: ColorClass.baseColor),
          drawer: Drawer(
            backgroundColor: ColorClass.baseColor,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: const Text('Smart Search'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/smartsearch');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.train,
                  ),
                  title: const Text('Menu'),
                  onTap: () {
                     Navigator.pushNamed(context, '/menu');
                  },
                ),
              ],
            ),
          ),
          body: Center(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Customize ",
                        style: TextStyle(
                          color: ColorClass.baseColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Plate',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Container(
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
                        onSubmitted:(value) {
                          dishprovider.getDish();
                        },
                        controller: dishprovider.diseaseController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50)),
                            prefixIcon: Icon(Icons.search),
                            labelText: 'Enter Ingredients/Diseases'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
  Flexible(
  child: SingleChildScrollView(
    child: GridView.count(
      childAspectRatio:0.62,
      physics: NeverScrollableScrollPhysics(), // Disable grid scrolling
      shrinkWrap: true,
      crossAxisCount: 2,
      padding: const EdgeInsets.all(15),
      children: List.generate( dishprovider.dishList!.length, (index) {
        return Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xFFE2E3E8),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  dishprovider.dishList![index].image! ?? "",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '${dishprovider.dishList![index].lable??""}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorClass.baseColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Spacer(),
                  Text(
                    'Cal',
                    style: TextStyle(
                      fontSize: 10,
                      color: ColorClass.baseColor,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      dishprovider.selectedList(dishprovider.dishList![index].lable??"");
                      Navigator.pushNamed(context, '/dishes');
                    },
                    child: Text(
                      'View Recipe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
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
                ],
              ),
            ],
          ),
        );
      }),
    ),
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
