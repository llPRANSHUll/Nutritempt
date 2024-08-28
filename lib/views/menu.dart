import 'package:flutter/material.dart';
import 'package:nutriapp/constant/colors.dart';
import 'package:provider/provider.dart';

import '../providers/getdishprovider.dart';
import 'additems.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  void initState() {
    super.initState();
    Provider.of<GetDishProvider>(context, listen: false).getMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<GetDishProvider>(
      builder: (context, getmenu, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Container(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/additems");
                            },
                            child: Container(
                              child: const Text(
                                'Add Items',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorClass.baseColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: EdgeInsets.all(12),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: Text(
                      'Menu',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: getmenu.menudata.menu == null ? 0 : getmenu.menudata.menu?.length,
                      itemBuilder: (context, index) {
                        if (getmenu.menudata.menu == null) {
                          return Container();
                        } else {
                          return Container(
                            margin: EdgeInsets.all(20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      height: 80,
                                      width: 80,
                                      child: Image.network(
                                        getmenu.menudata.menu![index].image ??
                                            "",
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        getmenu.menudata.menu![index]
                                                .dishName ??
                                            "",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.currency_pound),
                                          Text(
                                            getmenu.menudata.menu![index].price
                                                .toString(),
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              getmenu.deleteDish(getmenu
                                                      .menudata
                                                      .menu![index]
                                                      .menuNumber ??
                                                  0);
                                            },
                                            child: Container(
                                              child: const Text(
                                                'Delete',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  ColorClass.baseColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              padding: EdgeInsets.all(8),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
