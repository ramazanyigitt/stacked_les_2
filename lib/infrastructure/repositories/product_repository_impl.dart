import 'package:stacked_les_2/domain/models/product_model.dart';
import 'package:stacked_les_2/domain/repositories/i_product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<ProductModel>> getProducts() async {
    return const [
      ProductModel(id: 1, name: 'Süt'),
      ProductModel(id: 2, name: 'Ampul'),
      ProductModel(id: 3, name: 'Tekerlek'),
      ProductModel(id: 4, name: 'Mouse'),
      ProductModel(id: 5, name: 'Mouse 1'),
      ProductModel(id: 6, name: 'Mouse 2'),
      ProductModel(id: 7, name: 'Mouse 3'),
      ProductModel(id: 8, name: 'Mouse 4'),
      ProductModel(id: 9, name: 'Mouse 5'),
    ];
  }
}
