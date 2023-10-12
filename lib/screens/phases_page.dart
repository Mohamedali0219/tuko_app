import 'package:flutter/material.dart';
import 'package:toku_app/components/pages_components.dart';
import 'package:toku_app/models/model.dart';

class PhasesPage extends StatelessWidget {
  const PhasesPage({super.key});
  final List<Model> phases = const [
    Model(
      'sounds/phrases/i_love_programming.wav',
      'Kōdoku suru koto o wasurenaide kudasai',
      'dont forget to subscribe',
    ),
    Model(
      'sounds/phrases/i_love_programming.wav',
      'Watashi wa puroguramingu daisukidesu',
      'i love programming',
    ),
    Model(
      'sounds/phrases/programming_is_easy.wav',
      'Puroguramingu wa kantandesu ',
      'programming is easy',
    ),
    Model(
      'sounds/phrases/where_are_you_going.wav',
      'Doko ni iku no',
      'where are you going',
    ),
    Model(
      'sounds/phrases/what_is_your_name.wav',
      'Watashi wa anime ga daisukidesu',
      'what is your name?',
    ),
    Model(
      'sounds/phrases/i_love_anime.wav',
      'Watashi wa anime ga daisukidesu',
      'i love anime',
    ),
    Model(
      'sounds/phrases/how_are_you_feeling.wav',
      'Go kibun wa ikagadesu ka',
      'how are you feeling?',
    ),
    Model(
      'sounds/phrases/are_you_coming.wav',
      'Kimasu ka',
      'are you coming?',
    ),
    Model(
      'sounds/phrases/yes_im_coming.wav',
      'Hai watashi wa kite imasu',
      'yes i am coming',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phases Page',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 205, 119),
      ),
      body: ListView.builder(
        itemCount: phases.length,
        itemBuilder: (context, index) {
          return PhrasesBuild(
            phrases: phases[index],
            containerColor: const Color.fromARGB(255, 255, 231, 190),
          );
        },
      ),
    );
  }
}
