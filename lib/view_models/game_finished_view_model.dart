import 'package:hangman/pages/hangman_page.dart';
import 'package:hangman/view_models/view_model_base.dart';

class GameFinishedViewModel extends ViewModelBase {

  Future<void> startNewGame() async {
    await navigationService.navigateToPageWithReplace(const HangmanPage());
  }
  
}
