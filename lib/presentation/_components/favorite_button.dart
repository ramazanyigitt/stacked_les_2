import 'package:flutter/material.dart';
import 'package:stacked_les_2/application/services/favorite_service.dart';

import '../../domain/models/product_model.dart';
import '../../injection/injection_container.dart';

class FavoriteButton extends StatelessWidget {
  final ProductModel productModel;
  const FavoriteButton({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoriteService = locator<FavoriteService>();
    final isProductFavorite = favoriteService.isProductFavorite(productModel);
    return GestureDetector(
      onTap: () {
        if (isProductFavorite) {
          favoriteService.unFavorite(productModel);
        } else {
          favoriteService.favorite(productModel);
        }
      },
      child: SizedBox(
        width: 32,
        height: 32,
        child: Icon(
          isProductFavorite ? Icons.favorite : Icons.favorite_border,
          color: isProductFavorite ? Colors.red : Colors.grey,
        ),
      ),
    );
  }
}
