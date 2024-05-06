import 'package:flutter_podstawy_utilities/services/navigation_service.dart';
import 'package:get_it/get_it.dart';
import 'package:hangman/data/data_sources/words_local_source.dart';
import 'package:hangman/data/data_sources/words_memory_storage.dart';
import 'package:hangman/main.dart';
import 'package:hangman/repositories/words_repository.dart';
import 'package:hangman/view_models/game_finished_view_model.dart';
import 'package:hangman/view_models/game_view_model.dart';

GetIt sl = GetIt.instance;

void setupServiceLocatorForHangmanApp() {
  sl.registerFactory<GameViewModel>(() => GameViewModel(sl()));

  sl.registerLazySingleton<WordsLocalSource>(() => WordsMemoryStorage());
  sl.registerLazySingleton<WordsRepository>(() => WordsRepository(sl()));

  sl.registerFactory<GameFinishedViewModel>(() => GameFinishedViewModel());

  sl.registerLazySingleton<NavigationService>(
    () => NavigationService(navigatorKey),
  );
}
