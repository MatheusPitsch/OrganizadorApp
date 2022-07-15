// ignore_for_file: library_private_types_in_public_api

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:organizador_financeiro_pessoal_app/main.dart';
import 'package:organizador_financeiro_pessoal_app/presenter/home/homePage.dart';

import '../graphic/graphic_page.dart';
import '../settings/widgets/settings_page.dart';

class Buttombar extends StatefulWidget {
  const Buttombar({Key? key}) : super(key: key);

  @override
  _ButtombarState createState() => _ButtombarState();
}

class _ButtombarState extends State<Buttombar> {
  int _currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(
      () {
        _counter++;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.apps),
            title: const Text('Home'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(BootstrapIcons.graph_up),
            title: const Text('Gráfico'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.settings),
            title: const Text('Ajustes'),
            activeColor: const Color.fromARGB(255, 48, 125, 187),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
