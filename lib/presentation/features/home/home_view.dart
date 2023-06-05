import 'package:flutter/material.dart';
import 'package:stacked_les_2/presentation/features/products/product_favorites_list/product_favorites_list_view.dart';
import 'package:stacked_les_2/presentation/features/products/product_list/product_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: const [
            Expanded(
              child: TabBarView(
                children: [
                  ProductListView(),
                  ProductFavoritesListView(),
                ],
              ),
            ),
            TabBar(tabs: [
              Tab(
                child: Text(
                  'Ürünler',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Favoriler',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
