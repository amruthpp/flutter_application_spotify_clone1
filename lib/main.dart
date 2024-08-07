import 'package:flutter/material.dart';
import 'package:flutter_application_spotify_clone1/view/navigations/tabbar.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(scaffoldBackgroundColor:Colors.black,
      brightness: Brightness.dark,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle:TextStyle(fontSize: 12),
      unselectedLabelStyle: TextStyle(fontSize: 12),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white38
       ) 
       ),
      
      home: Tabbar(

      )
    );
  }
}