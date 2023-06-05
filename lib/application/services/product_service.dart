import 'package:stacked_les_2/domain/models/product_model.dart';
import 'package:stacked_les_2/domain/repositories/i_product_repository.dart';
import 'package:stacked_les_2/injection/injection_container.dart';

class ProductService {
  final productRepository = locator<ProductRepository>();

  Future<List<ProductModel>> getProducts() async {
    return productRepository.getProducts();
  }
}
