import 'package:stacked/stacked.dart';
import 'package:stacked_les_2/domain/models/product_model.dart';
import 'package:stacked_les_2/domain/repositories/i_favorite_repository.dart';

import '../../injection/injection_container.dart';

class FavoriteService with ListenableServiceMixin {
  final favoriteRepository = locator<FavoriteRepository>();

  List<ProductModel> favoriteProducts = List.empty(growable: true);

  Future<List<ProductModel>> getFavorites() async {
    favoriteProducts = await favoriteRepository.getFavorites();
    return favoriteProducts;
  }

  Future<bool> favorite(ProductModel productModel) async {
    favoriteProducts.add(productModel);
    final response = await favoriteRepository.favorite(productModel.id);
    notifyListeners();
    return response;
  }

  Future<bool> unFavorite(ProductModel productModel) async {
    favoriteProducts.remove(productModel);
    final response = await favoriteRepository.unFavorite(productModel.id);
    notifyListeners();
    return response;
  }

  bool isProductFavorite(ProductModel productModel) {
    return favoriteProducts.any((element) => element.id == productModel.id);
  }
}
