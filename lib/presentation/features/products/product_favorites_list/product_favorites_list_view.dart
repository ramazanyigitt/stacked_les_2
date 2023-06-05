import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_les_2/presentation/features/products/product_favorites_list/product_favorites_list_viewmodel.dart';

import '../../../_components/favorite_button.dart';

part 'widgets/product_list_builder.dart';

class ProductFavoritesListView extends StatefulWidget {
  const ProductFavoritesListView({Key? key}) : super(key: key);

  @override
  State<ProductFavoritesListView> createState() =>
      _ProductFavoritesListViewState();
}

class _ProductFavoritesListViewState extends State<ProductFavoritesListView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => ProductFavoritesListViewModel(),
      onViewModelReady: (viewModel) => viewModel.init(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: const [
                Expanded(
                  child: _ProductFavoritesListBuilder(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
