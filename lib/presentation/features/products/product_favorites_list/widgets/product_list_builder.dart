part of '../product_favorites_list_view.dart';

class _ProductFavoritesListBuilder
    extends ViewModelWidget<ProductFavoritesListViewModel> {
  const _ProductFavoritesListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ProductFavoritesListViewModel viewModel) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final product = viewModel.favoriteService.favoriteProducts[index];
        return ListTile(
          title: Text('Name: ${product.name}'),
          trailing: FavoriteButton(
            productModel: product,
          ),
        );
      },
      itemCount: viewModel.favoriteService.favoriteProducts.length,
    );
  }
}
