import 'package:flutter/material.dart';
import 'package:toku_app/components/pages_components.dart';
import 'package:toku_app/models/item.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
  final List<Item> numbers = const [
    Item(
      'assets/images/numbers/number_one.png',
      'ichi',
      'one',
      'sounds/numbers/number_one_sound.mp3',
    ),
    Item(
      'assets/images/numbers/number_two.png',
      'Ni',
      'two',
      'sounds/numbers/number_two_sound.mp3',
    ),
    Item(
      'assets/images/numbers/number_three.png',
      'San',
      'three',
      'sounds/numbers/number_three_sound.mp3',
    ),
    Item(
      'assets/images/numbers/number_four.png',
      'Shi',
      'four',
      'sounds/numbers/number_four_sound.mp3',
    ),
    Item(
      'assets/images/numbers/number_five.png',
      'Go',
      'five',
      'sounds/numbers/number_five_sound.mp3',
    ),
    Item(
      'assets/images/numbers/number_six.png',
      'Roku',
      'Six',
      'sounds/numbers/number_six_sound.mp3',
    ),
    Item(
      'assets/images/numbers/number_seven.png',
      'Sebun',
      'Seven',
      'sounds/numbers/number_seven_sound.mp3',
    ),
    Item(
      'assets/images/numbers/number_eight.png',
      'Hachi',
      'Eigth',
      'sounds/numbers/number_eight_sound.mp3',
    ),
    Item(
      'assets/images/numbers/number_nine.png',
      'Kyu',
      'Nine',
      'sounds/numbers/number_nine_sound.mp3',
    ),
    Item(
      'assets/images/numbers/number_ten.png',
      'Ju',
      'ten',
      'sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Number Page',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 215, 145),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return PagerBuild(
            numbers: numbers[index],
            imageColor: Colors.amber,
            containerColor: const Color.fromARGB(255, 255, 231, 190),
          );
        },
      ),
    );
  }
}
