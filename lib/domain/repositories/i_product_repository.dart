import 'package:stacked_les_2/domain/models/product_model.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> getProducts();
}
