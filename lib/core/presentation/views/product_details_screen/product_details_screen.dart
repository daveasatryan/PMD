import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pmd_solutions/core/data/utilities/bloc/bloc_factory.dart';
import 'package:pmd_solutions/core/presentation/utilities/strings/app_strings.dart';
import 'package:pmd_solutions/core/presentation/views/product_details_screen/bloc/product_details_bloc.dart';
import 'package:pmd_solutions/core/presentation/views/product_details_screen/bloc/product_details_event.dart';
import 'package:pmd_solutions/core/presentation/views/product_details_screen/bloc/product_details_state.dart';
import 'package:pmd_solutions/core/presentation/widgets/app_loading_widget.dart';
import 'package:pmd_solutions/core/presentation/widgets/base_app_bar.dart';
import 'package:pmd_solutions/core/presentation/widgets/base_stateless_widget.dart';

class ProductDetailsScreen extends BaseStatelessWidget {
  final int productID;

  ProductDetailsScreen({super.key, required this.productID});

  @override
  Widget baseBuild(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              context.read<BlocFactory>().create<ProductDetailsBloc>()..add(
                ProductDetailsEvent.getProductDetails(productID: productID),
              ),
      child: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
        builder: (context, state) {
          return state.when(
            error: (message) => Text("error"),
            loading: () => AppLoadingWidget(),
            success: (product) {
              return Scaffold(
                appBar: BaseAppBarWidget(title: product.title),
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 300.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(product.image),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Title and Price
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    product.title,
                                    style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  '\$${product.price.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.bold,
                                    color: colors.greenColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),

                            // Rating
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: colors.yellowColor,
                                  size: 20.sp,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  '${product.rating.rate} (${product.rating.count} reviews)',
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),

                            // Category
                            Chip(
                              label: Text(
                                product.category.toUpperCase(),
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              backgroundColor: colors.black45Color.withValues(
                                alpha: 0.2,
                              ),
                            ),
                            SizedBox(height: 16.h),

                            // Description
                            Text(
                              AppStrings.descriptionText,
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              product.description,
                              style: TextStyle(fontSize: 16.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
