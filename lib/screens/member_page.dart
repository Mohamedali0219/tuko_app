import 'package:flutter/material.dart';
import 'package:toku_app/components/pages_components.dart';
import 'package:toku_app/models/item.dart';

class MumberPage extends StatelessWidget {
  const MumberPage({super.key});
  final List<Item> mumbers = const [
    Item(
      'assets/images/family_members/family_daughter.png',
      'Chichioya',
      'Father',
      'sounds/family_members/daughter.wav',
    ),
    Item(
      'assets/images/family_members/family_father.png',
      'Musume',
      'daughter',
      'sounds/family_members/father.wav',
    ),
    Item(
      'assets/images/family_members/family_grandfather.png',
      'ojisan',
      'Grand Father',
      'sounds/family_members/grand_father.wav',
    ),
    Item(
      'assets/images/family_members/family_grandmother.png',
      'Hahaoya',
      'Mother',
      'sounds/family_members/grand_mother.wav',
    ),
    Item(
      'assets/images/family_members/family_mother.png',
      'Sobo',
      'geand mother',
      'sounds/family_members/mother.wav',
    ),
    Item(
      'assets/images/family_members/family_older_brother.png',
      'Nisan',
      'older brother',
      'sounds/family_members/older_bother.wav',
    ),
    Item(
      'assets/images/family_members/family_older_sister.png',
      'Ane',
      'older sister',
      'sounds/family_members/older_sister.wav',
    ),
    Item(
      'assets/images/family_members/family_son.png',
      'Musuko',
      'son',
      'sounds/family_members/son.wav',
    ),
    Item(
      'assets/images/family_members/family_younger_brother.png',
      'ototo',
      'yoiinger brother',
      'sounds/family_members/younger_brohter.wav',
    ),
    Item(
      'assets/images/family_members/family_younger_sister.png',
      'imoto',
      'younger sister',
      'sounds/family_members/younger_sister.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mumber Page',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 215, 145),
      ),
      body: ListView.builder(
        itemCount: mumbers.length,
        itemBuilder: (context, index) {
          return PagerBuild(
            numbers: mumbers[index],
            imageColor: Colors.amber,
            containerColor: Color.fromARGB(255, 113, 0, 133),
          );
        },
      ),
    );
  }
}
