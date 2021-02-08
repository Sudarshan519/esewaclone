import 'package:esewaui/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Analytics Demo',
      theme: ThemeData(
          //  primaryColor: Colors.green,

          bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.transparent,
              modalBackgroundColor: Colors.transparent)),
      debugShowCheckedModeBanner: false,
      
      home: BottomNav(),
    );
  }
}
