import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wordpress_flutter/ui/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white),
        textTheme: GoogleFonts.latoTextTheme(),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(background: Colors.white),
      ),
      home: HomeScreen(),
    );
  }
}
