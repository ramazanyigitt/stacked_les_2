import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_les_2/presentation/features/products/product_list/product_list_viewmodel.dart';

import '../../../_components/favorite_button.dart';

part 'widgets/product_list_builder.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => ProductListViewModel(),
      onViewModelReady: (viewModel) => viewModel.init(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: const [
                Expanded(
                  child: _ProductListBuilder(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
