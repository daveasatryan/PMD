import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pmd_solutions/core/data/utilities/bloc/bloc_factory.dart';
import 'package:pmd_solutions/core/presentation/utilities/routes/app_routes.dart';
import 'package:pmd_solutions/core/presentation/utilities/strings/app_strings.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_bloc.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_event.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_state.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/widgets/product_card.dart';
import 'package:pmd_solutions/core/presentation/widgets/base_stateless_widget.dart';

class ProductListPage extends BaseStatelessWidget {
  ProductListPage({super.key});

  @override
  Widget baseBuild(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.productsText,
          style: TextStyle(color: colors.lableColor),
        ),
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).go(AppRoutes.cardRoute);
            },
            icon: Icon(Icons.add_card_sharp, color: colors.lableColor),
          ),
        ],
      ),
      body: BlocBuilder<ProductListBloc, ProductListState>(
        bloc:
            context.read<BlocFactory>().create<ProductListBloc>()
              ..add(ProductListEvent.getProductList()),
        builder: (context, state) {
          return state.when(
            error: (message) {
              return Text(message);
            },
            loading: () {
              return Center(
                child: CircularProgressIndicator(color: colors.black),
              );
            },
            success: (productList) {
              return ListView.builder(
                itemCount: productList.length,
                itemBuilder: (_, index) {
                  final product = productList[index];
                  return ProductCard(
                    product: product,
                    onTap: () {
                      context.read<ProductListBloc>().add(
                        ProductListEvent.addToCard(product: product),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added ${product.title} to cart'),
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
