import 'package:equatable/equatable.dart';
import 'package:hangman/models/letter.dart';

class WordToGuess extends Equatable {
  const WordToGuess(this.letters);

  final List<Letter> letters;
  String get toGuess => letters.map((e) => e.valueToGuess).toString();

  factory WordToGuess.empty() {
    return const WordToGuess([]);
  }

  @override
  List<Object?> get props => [letters];

  split(String s) {}
}
