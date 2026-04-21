 
 import 'package:finance_ui/const/widgets/botom_nav_bar.dart';
import 'package:finance_ui/features/home/home_screen.dart';
import 'package:finance_ui/features/myCard/my_card_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {  
  int currentIndex = 0;

final List<Widget> _screens = [
  const  HomeScreen(),
  Container(
    color: Colors.blue,
    width: double.infinity,
    height: double.infinity,
  ),
  Container( 
    color: const Color.fromARGB(255, 132, 221, 16),
    width: double.infinity,
    height: double.infinity, 

  ),
  const MycardsScreen (),
 
  Container(
    color: Colors.green,
    width: double.infinity,
    height: double.infinity,
  ),
];

 void Function(int)? onTap(int value){
  setState(() {
    currentIndex = value;
  });
  return null;
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavBar(currentIndex: currentIndex,
      onTap: onTap,),
     
      );
    
  }
}     
