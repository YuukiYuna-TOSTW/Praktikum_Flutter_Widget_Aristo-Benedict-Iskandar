import 'package:flutter/material.dart';
import 'package:shrine/backdrop.dart';

import 'category_menu_page.dart';
import 'colors.dart';
import 'home.dart';
import 'login.dart';
import 'model/product.dart';
import 'supplemental/cut_corners_border.dart';


class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  _ShrineAppState createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {
  Category _currentCategory = Category.hoyoverse;
  
  void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => Backdrop(
              currentCategory: _currentCategory,
              frontLayer: HomePage(category: _currentCategory),
              backLayer: CategoryMenuPage(
                currentCategory: _currentCategory,
                onCategoryTap: _onCategoryTap,
              ),
              frontTitle: const Text('Game Star'),
              backTitle: const Text('MENU'),
            ),
        },
      theme: _kShrineTheme,
    );
  }
}


final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrineBlack,
      secondary: kShrineBlack,
      error: kShrineBlack,
    ),

    scaffoldBackgroundColor: kShrineSurfaceSoftBlueGray,
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kShrineBlack,
    ),

    appBarTheme: const AppBarTheme(
      foregroundColor: kShrineBlack,
      backgroundColor: kShrineBlueSky,
    ),

    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kShrineBlack,
        ),
      ),

      floatingLabelStyle: TextStyle(
        color: kShrineBlack,
      ),
    ),
  );
}