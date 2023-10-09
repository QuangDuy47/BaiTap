import 'package:flutter/material.dart';
import 'package:flutter4/detail_screen.dart';
import 'package:flutter4/index_screen.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key,required this.idx});
  final idx;
  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(fixedColor: Colors.lightBlueAccent,
          items: const [
            BottomNavigationBarItem(
              label: "Trang chủ",
            icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: "Chi tiết",
              icon: Icon(Icons.star),
            )
          ],
          currentIndex: idx,

          onTap: (int indexOfItem){
            if(indexOfItem == 0){
              Navigator.popUntil(context, (route) => route.isFirst);
              Navigator.pushNamed(context, '/');
            }
            else{ 
              Navigator.popUntil(context, (route) => route.isFirst);
              Navigator.pushNamed(context, '/detail');
            }
          }
    );
    
  }
}