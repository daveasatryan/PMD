import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pmd_solutions/core/data/utilities/bloc/bloc_factory.dart';
import 'package:pmd_solutions/core/presentation/utilities/count_provider.dart';
import 'package:pmd_solutions/core/presentation/utilities/routes/app_routes.dart';
import 'package:pmd_solutions/core/presentation/utilities/strings/app_strings.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_bloc.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_event.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_state.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/widgets/product_card.dart';
import 'package:pmd_solutions/core/presentation/widgets/app_loading_widget.dart';
import 'package:pmd_solutions/core/presentation/widgets/base_stateless_widget.dart';
import 'package:provider/provider.dart';

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
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRoutes.cardRoute);
                  },
                  icon: Icon(Icons.shopping_basket, color: colors.lableColor),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: colors.redColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: BoxConstraints(minWidth: 16, minHeight: 16),
                    child: Consumer<CountProvider>(
                      builder: (context, cuntProvider, child) {
                        return cuntProvider.count != null
                            ? Text(
                              cuntProvider.count.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center,
                            )
                            : const SizedBox();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: BlocProvider(
        create:
            (context) =>
                context.read<BlocFactory>().create<ProductListBloc>()
                  ..add(ProductListEvent.getProductList()),
        child: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
            return state.when(
              error: (message) {
                return Text(message);
              },
              loading: () {
                return AppLoadingWidget();
              },
              success: (productList) {
                return ListView.builder(
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    final product = productList[index];
                    final productKey = GlobalKey();
                    return ProductCard(
                      product: product,
                      productKey: productKey,
                      key: productKey,
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
