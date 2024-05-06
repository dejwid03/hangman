import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';
import 'package:hangman/models/word_to_guess.dart';
import 'package:hangman/widgets/hangman_title.dart';
import 'package:hangman/models/letter.dart';

class WordToGuessView extends StatelessWidget {
  const WordToGuessView(this.wordToGuess, {super.key});

  static const double spacing = 6;
  final WordToGuess wordToGuess;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimens.hugeMargin,
        bottom: Dimens.normalMargin,
      ),
      child: Column(
        children: [
          // title widget
          const HangmanTitle(),
          // word to guess widget
          _buildWord(),
          // game goal widget
          
        ],
      ),
    );
  }

  Widget _buildWord() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: wordToGuess.letters.map(_buildLetter).toList(),
    );
  }

  Padding _buildLetter(Letter letter) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spacing),
      child: Text(
        letter.value.toUpperCase(),
        style: const TextStyle(
          color: MyColors.ufoGreen,
          fontWeight: FontWeight.bold,
          fontSize: 40
        ),
      ),
    );
  }
}
