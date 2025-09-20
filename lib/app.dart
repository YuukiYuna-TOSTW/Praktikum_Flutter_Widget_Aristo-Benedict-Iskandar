import 'package:flutter/material.dart';
import 'package:shrine/backdrop.dart';

import 'category_menu_page.dart';
import 'colors.dart';
import 'home.dart';
import 'login.dart';
import 'model/product.dart';
import 'supplemental/cut_corners_border.dart';

// TODO: Convert ShrineApp to stateful widget (104)
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
        // TODO: Change to a Backdrop with a HomePage frontLayer (104)
        '/': (BuildContext context) => Backdrop(
              // TODO: Make currentCategory field take _currentCategory (104)
              currentCategory: _currentCategory,
              // TODO: Pass _currentCategory for frontLayer (104)
              frontLayer: HomePage(category: _currentCategory),
              // TODO: Change backLayer field value to CategoryMenuPage (104)
              backLayer: CategoryMenuPage(
                currentCategory: _currentCategory,
                onCategoryTap: _onCategoryTap,
              ),
              frontTitle: const Text('Game Star'),
              backTitle: const Text('MENU'),
            ),
        },
      // TODO: Add a theme (103)
      theme: _kShrineTheme, // New code
    );
  }
}

// TODO: Build a Shrine Theme (103)
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