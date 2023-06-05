part of '../product_list_view.dart';

class _ProductListBuilder extends ViewModelWidget<ProductListViewModel> {
  const _ProductListBuilder({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, ProductListViewModel viewModel) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final product = viewModel.products[index];
        return ListTile(
          title: Text('Name: ${product.name}'),
          trailing: FavoriteButton(
            productModel: product,
          ),
        );
      },
      itemCount: viewModel.products.length,
    );
  }
}
