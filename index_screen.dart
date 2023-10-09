import 'package:flutter/material.dart';
import 'package:flutter4/botnav.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Trang chu')),
    body:const Text('Index Screen'),
    bottomNavigationBar: const BottomMenu(idx: 0),

    drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            
            ListTile(
              leading: Icon(Icons.home), 
              title: Text('Trang chủ',style: TextStyle(color: Colors.blue)), 
              
              onTap:() {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushNamed(context, '/');
              },
              
            ),
            ListTile(
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushNamed(context, '/detail');
              },
              leading: Icon(Icons.account_box), 
              title: Text('Cá nhân'), 
              
            )
          ],
        )
      ),
    );
  }
}