import 'package:stacked_les_2/domain/models/product_model.dart';

abstract class FavoriteRepository {
  Future<List<ProductModel>> getFavorites();
  Future<bool> favorite(productId);
  Future<bool> unFavorite(productId);
}
