import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_craft/FavouritePage.dart';
import 'package:furniture_craft/ScannerScreen.dart';
import 'package:furniture_craft/homescreen.dart';
import 'package:furniture_craft/ProfileScreen.dart';
import 'package:furniture_craft/ShoppingScreen.dart';
import 'package:furniture_craft/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(MyApp());
  });
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const splashscreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Homescreen(),
    const FavouritePage(),
    const ScannerPage(),
    const ShoppingScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),

      // Hide FAB on Shopping (index 3) and Profile (index 4)
      floatingActionButton: (_selectedIndex == 3 || _selectedIndex == 4)
          ? null
          : FloatingActionButton(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {
          // Open ScannerPage (index 2)
          _onItemTapped(2);
        },
        backgroundColor: Colors.lightGreen,
        child: const Icon(Icons.remove_red_eye, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Hide BottomAppBar on Shopping (3) and Profile (4)
      bottomNavigationBar: (_selectedIndex == 3 || _selectedIndex == 4)
          ? null
          : BottomAppBar(
        height: 90,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildBottomItem(Icons.home, "Home", 0),
            _buildBottomItem(Icons.favorite_border, "Favourite", 1),
            const SizedBox(width: 40),
            _buildBottomItem(Icons.shopping_cart_outlined, "Shopping", 3),
            _buildBottomItem(Icons.person_outline, "Profile", 4),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: isSelected ? Colors.lightGreen : Colors.grey),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.lightGreen : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
