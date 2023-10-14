import 'dart:io';
import 'dart:math';

void main() {
  final List<String> choices = ['snake', 'water', 'gun'];

  while (true) {
    stdout.write('Choose your option (snake, water, or gun): ');
    final playerChoice = stdin.readLineSync()?.toLowerCase();

    if (choices.contains(playerChoice)) {
      final random = Random().nextInt(choices.length);
      final computerChoice = choices[random];

      print('Player: $playerChoice');
      print('Computer: $computerChoice');

      if (playerChoice == computerChoice) {
        print('It\'s a tie!');
      } else if (
        (playerChoice == 'snake' && computerChoice == 'water') ||
        (playerChoice == 'water' && computerChoice == 'gun') ||
        (playerChoice == 'gun' && computerChoice == 'snake')
      ) {
        print('Player wins!');
      } else {
        print('Computer wins!');
      }
    } else {
      print('Invalid option. Please try again.');
    }
  }
}

