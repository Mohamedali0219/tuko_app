import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';
import 'package:toku_app/models/model.dart';

class PagerBuild extends StatelessWidget {
  const PagerBuild({
    super.key,
    required this.numbers,
    required this.imageColor,
    required this.containerColor,
  });
  final Item numbers;
  final Color imageColor;
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: containerColor,
      child: Row(
        children: [
          Container(
            color: imageColor,
            child: Image.asset(numbers.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SizedBox(
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    numbers.jpName,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    numbers.enName,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: IconButton(
              onPressed: () {
                AudioPlayer player = AudioPlayer();
                player.play(
                  AssetSource(numbers.sound),
                );
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 32,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PhrasesBuild extends StatelessWidget {
  const PhrasesBuild({
    super.key,
    required this.phrases,
    required this.containerColor,
  });
  final Model phrases;
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: containerColor,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SizedBox(
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    phrases.jpName,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    phrases.enName,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: IconButton(
              onPressed: () {
                AudioPlayer player = AudioPlayer();
                player.play(
                  AssetSource(phrases.sound),
                );
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 32,
              ),
            ),
          )
        ],
      ),
    );
  }
}
