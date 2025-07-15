import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pmd_solutions/core/data/utilities/bloc/bloc_factory.dart';
import 'package:pmd_solutions/core/presentation/utilities/strings/app_strings.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_bloc.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_event.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_state.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/widgets/product_card.dart';
import 'package:pmd_solutions/core/presentation/widgets/app_loading_widget.dart';
import 'package:pmd_solutions/core/presentation/widgets/base_app_bar.dart';
import 'package:pmd_solutions/core/presentation/widgets/base_stateless_widget.dart';

class ProductListPage extends BaseStatelessWidget {
  ProductListPage({super.key});

  @override
  Widget baseBuild(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBarWidget(title: AppStrings.productsText),
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
