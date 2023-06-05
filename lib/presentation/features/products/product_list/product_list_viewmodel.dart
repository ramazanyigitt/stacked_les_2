import 'package:stacked/stacked.dart';
import 'package:stacked_les_2/application/services/favorite_service.dart';
import 'package:stacked_les_2/application/services/product_service.dart';
import 'package:stacked_les_2/domain/models/product_model.dart';
import 'package:stacked_les_2/injection/injection_container.dart';

class ProductListViewModel extends ReactiveViewModel {
  final productService = locator<ProductService>();
  final favoriteService = locator<FavoriteService>();

  @override
  final listenableServices = [
    locator<FavoriteService>(),
  ];

  late bool isInited;
  List<ProductModel> products = [];

  Future<void> init() async {
    isInited = false;
    await getProducts();
    isInited = true;
    notifyListeners();
  }

  Future<void> getProducts() async {
    products = await productService.getProducts();
  }
}
