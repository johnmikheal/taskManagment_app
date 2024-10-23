import 'package:flutter/material.dart';
import 'package:project_6/presentation/screens/tabs/settings_tabs/settings_tab.dart';
import 'package:project_6/presentation/screens/tabs/tasks_tabs/tasks_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  List<Widget> tabs = [
    TasksTab(),
    SettingsTab(),
  ];

//هنعمل list نحط فيه الاتنين widget tabs
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        //علشان اخلي النوتش ياخد لون background
        appBar: AppBar(
          title: const Text("ToDo List"),
        ),

        //////////////////////////////////////

        floatingActionButton: FloatingActionButton(


          onPressed: () {}, child:const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        //////////////////////////////////////

        bottomNavigationBar: BottomAppBar(
          //wrab bottomappbar علشان اعمل النوتش الي في النص
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,

          child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              currentIndex: selectedindex, // الي اضغط عليها تتغير لونها
              elevation: 0, // علشان اتحكم في ال shape
              onTap: (index) {
                selectedindex = index; //لو ضغطت علي الايقون بيديني ال index
                setState(() {
                  //علشان ال index بيتغير
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.list), label: "Tasks"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
              ]),
        ),

        ///////////////////////////////////////

        //علشان مليش acsess لل indx علشان خرجت بره الاسكوب هعمل variable فوق selectedindex
        body: tabs[selectedindex] // 0  or  1,
        );
  }
}
