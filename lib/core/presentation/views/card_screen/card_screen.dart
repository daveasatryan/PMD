import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pmd_solutions/core/data/utilities/bloc/bloc_factory.dart';
import 'package:pmd_solutions/core/presentation/utilities/strings/app_strings.dart';
import 'package:pmd_solutions/core/presentation/views/card_screen/bloc/card_screen_bloc.dart';
import 'package:pmd_solutions/core/presentation/views/card_screen/bloc/card_screen_event.dart';
import 'package:pmd_solutions/core/presentation/views/card_screen/bloc/card_screen_state.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/widgets/product_card.dart';
import 'package:pmd_solutions/core/presentation/widgets/base_stateless_widget.dart';

class CardScreen extends BaseStatelessWidget {
  CardScreen({super.key});

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
            onPressed: () {},
            icon: Icon(Icons.add_card_sharp, color: colors.lableColor),
          ),
        ],
      ),
      body: BlocProvider(
        create:
            (context) =>
                context.read<BlocFactory>().create<CardScreenBloc>()
                  ..add(CardScreenEvent.getCardData()),
        child: BlocBuilder<CardScreenBloc, CardScreenState>(
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
                      productKey: GlobalKey(),
                      product: product,
                      showAddToCardIcon: false,
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
