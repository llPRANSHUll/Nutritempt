import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nutriapp/providers/getdishprovider.dart';
import 'package:nutriapp/views/home.dart';
import 'package:provider/provider.dart';
import 'constant/routes.dart';


void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown], 
  );
  runApp(const FranchiseApp());
}

class FranchiseApp extends StatelessWidget {
  const FranchiseApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GetDishProvider())
      ],
      child: MaterialApp(
          builder: (context, child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(
                  textScaleFactor:
                      data.textScaleFactor > 1.0 ? 1.0 : data.textScaleFactor),
              child: child!,
            );
          },
          routes: routes, 
          debugShowCheckedModeBanner: false, 
          theme: ThemeData(
            fontFamily: 'Poppins',
          ),
          home: Home(), 
      ),
    );
  }
}
 