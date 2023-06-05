import 'package:stacked/stacked.dart';
import 'package:stacked_les_2/domain/models/product_model.dart';
import 'package:stacked_les_2/injection/injection_container.dart';

import '../../../../application/services/favorite_service.dart';

class ProductFavoritesListViewModel extends ReactiveViewModel {
  final favoriteService = locator<FavoriteService>();

  @override
  final listenableServices = [
    locator<FavoriteService>(),
  ];

  late bool isInited;

  Future<void> init() async {
    isInited = false;
    await getProducts();
    isInited = true;
    notifyListeners();
  }

  Future<List<ProductModel>> getProducts() async {
    return favoriteService.getFavorites();
  }
}
