import 'package:get_it/get_it.dart';
import 'package:stacked_les_2/domain/repositories/i_favorite_repository.dart';
import 'package:stacked_les_2/domain/repositories/i_product_repository.dart';
import 'package:stacked_les_2/infrastructure/repositories/product_repository_impl.dart';

import '../application/services/favorite_service.dart';
import '../application/services/product_service.dart';
import '../infrastructure/repositories/favorite_repository_impl.dart';

final locator = GetIt.instance;

Future<void> configureDependencies() async {
  locator
      .registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl());
  locator.registerLazySingleton<FavoriteRepository>(
      () => FavoriteRepositoryImpl());
  locator.registerLazySingleton(() => ProductService());
  locator.registerLazySingleton(() => FavoriteService());
}
