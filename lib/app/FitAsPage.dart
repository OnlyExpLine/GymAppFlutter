import 'package:flutter/material.dart';
import 'package:gym_app_project/app/FitAssistent.dart';
import 'package:gym_app_project/app/General.dart';
import 'package:gym_app_project/app/Profil.dart';
import 'package:gym_app_project/app/Schedule.dart';
import 'package:gym_app_project/app/Shop.dart';
import '../constant.dart';

class FitAsPage extends StatefulWidget {
  const FitAsPage({super.key});

  @override
  State<FitAsPage> createState() => _FitAsPageState();
}

class _FitAsPageState extends State<FitAsPage> {
  var _curentPage = 0;
  var _pages = [
    General(),
    Schedule(),
    FitAssistent(),
    Shop(),
    Profil()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: deepPurple50,
        title: Text("Фитнес-ассистент", style: TextStyle(fontSize: 25, fontWeight: fontWeight500)),
      ),
      body: Center(
        child: _pages.elementAt(_curentPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: 'Расписание'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Фитнес-ассистент'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: 'Магазин'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профиль'
          ),
        ],
        currentIndex: _curentPage,
        fixedColor: Colors.deepPurpleAccent,
        unselectedItemColor: deepPurple100,
        showUnselectedLabels: true,
        onTap: (int intIndex){
          setState(() {
            _curentPage = intIndex;
          });
        },
      ),
    );
  }
}
