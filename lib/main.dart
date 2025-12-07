import 'package:flutter/material.dart';
import 'package:catetin/core/theme/app_theme.dart';
import 'package:catetin/core/widgets/custom_navbar.dart';
import 'ui/views/beranda/home_page.dart';
import 'package:catetin/data/db/app_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CatetInApp());
}

class CatetInApp extends StatefulWidget {
  const CatetInApp({super.key});

  @override
  State<CatetInApp> createState() => _CatetInAppState();
}

class _CatetInAppState extends State<CatetInApp> {
  int _currentIndex = 0;
  bool _isDark = false;

  final pages = const [
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catet.in',
      debugShowCheckedModeBanner: false,
      theme: _isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: CustomNavbar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() => _isDark = !_isDark),
          child: Icon(_isDark ? Icons.wb_sunny : Icons.dark_mode),
        ),
      ),
    );
  }
}
