import 'package:stacked_les_2/domain/models/product_model.dart';

class CartModel {
  final List<ProductModel> products;
  const CartModel({
    required this.products,
  });
}
