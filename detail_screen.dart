import 'package:flutter/material.dart';
import 'package:flutter4/botnav.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Chi tiet')),
    body: const Text('Detail Screen'),
    bottomNavigationBar: const BottomMenu(idx: 1),
    );
  }
}