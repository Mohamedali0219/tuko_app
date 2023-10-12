import 'package:flutter/material.dart';
import 'package:toku_app/components/home_componetns.dart';
import 'package:toku_app/screens/color_page.dart';
import 'package:toku_app/screens/member_page.dart';
import 'package:toku_app/screens/number_page.dart';
import 'package:toku_app/screens/phases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 231, 190),
      appBar: AppBar(
        title: const Text(
          'Tuko App',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 215, 145),
      ),
      body: Column(
        children: [
          Row(
            children: [
              HomeBuild(
                text: 'Number',
                color: Colors.amber,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const NumberPage();
                  }));
                },
              ),
              HomeBuild(
                text: 'phases',
                color: Colors.red,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PhasesPage();
                  }));
                },
              ),
            ],
          ),
          Row(
            children: [
              HomeBuild(
                text: 'Members',
                color: Colors.purple,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MumberPage();
                  }));
                },
              ),
              HomeBuild(
                text: 'Colors',
                color: Colors.green,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ColorPage();
                  }));
                },
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 80.0),
            child: Text(
              'Select From this Choices',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
