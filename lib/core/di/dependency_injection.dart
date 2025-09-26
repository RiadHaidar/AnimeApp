import 'package:cleanarch/features/shows/data/data_sources/mock_data_source.dart';
import 'package:cleanarch/features/shows/data/repositories/shows_repository_implemntation.dart';
import 'package:cleanarch/features/shows/domain/repo/shows_repository.dart';
import 'package:cleanarch/features/shows/domain/use_cases/get_shows_use_case.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setup() {
  // Register data sources
  getIt.registerLazySingleton<MockShowDataSource>(
    () => MockShowDataSource(),
  );

  // Register repositories
  getIt.registerLazySingleton<ShowsRepository>(
    () => ShowsRepositoryImplemntation(getIt<MockShowDataSource>()),
  );

  // Register use cases
  getIt.registerLazySingleton<GetShowsUseCase>(
    () => GetShowsUseCase(getIt<ShowsRepository>()),
  );
}
