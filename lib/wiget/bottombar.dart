import 'package:flutter/material.dart';
import 'package:insta/profile/profile_screen.dart';


class MainScreen extends StatelessWidget {
  int selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        
        children: const [
          Scaffold(),
          Scaffold(),
          Scaffold(),
          Scaffold(),
         ProfileScreen(),
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          setState((){
            selectedIndex = index;
          });
        },
    items: [
        BottomNavigationBarItem(icon: Icon(
          Icons.home_outlined,size: 30,color: Colors.black,
        ),
        activeIcon: Icon(Icons.home,
        size: 30,
       
        ),
        label: "",
        ),
         BottomNavigationBarItem(icon: Icon(
          Icons.search,size: 30,color: Colors.black,
        ),
        activeIcon: Icon(Icons.search,
        size: 30,
        ),
        label: "",
        ),
         BottomNavigationBarItem(icon: Icon(
          Icons.ondemand_video_outlined,size: 30,color: Colors.black,
        ),
        activeIcon: Icon(Icons.ondemand_video,
        size: 30,
        ),
        label: "",
        ),
  BottomNavigationBarItem(icon: Icon(
          Icons.local_mall_outlined,size: 30,color: Colors.black,
        ),
        activeIcon: Icon(Icons.local_mall,
        size: 30,
        ),
        label: "",
        ),
       BottomNavigationBarItem(icon: CircleAvatar(radius: 15,
       backgroundColor: Colors.black,
       backgroundImage: AssetImage("assets/how.png"),
       ),
       label: ""
       
        ),
      ],
      ),
    );
  }
  
  void setState(Null Function() param0) {}
}

