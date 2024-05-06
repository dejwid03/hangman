import 'package:equatable/equatable.dart';

class Letter extends Equatable {
  const Letter(this.value, this.valueToGuess);

  final String value;
  final String valueToGuess;

  @override
  List<Object?> get props => [value, valueToGuess];
}
