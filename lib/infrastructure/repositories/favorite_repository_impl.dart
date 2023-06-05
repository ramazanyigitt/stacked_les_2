import 'package:stacked_les_2/domain/models/product_model.dart';
import 'package:stacked_les_2/domain/repositories/i_favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  @override
  Future<bool> favorite(productId) async {
    return true;
  }

  @override
  Future<bool> unFavorite(productId) async {
    return true;
  }

  @override
  Future<List<ProductModel>> getFavorites() async {
    return List.from([
      const ProductModel(id: 1, name: 'Süt'),
      const ProductModel(id: 4, name: 'Mouse'),
    ]);
  }
}
