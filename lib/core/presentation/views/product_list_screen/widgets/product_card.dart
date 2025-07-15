import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pmd_solutions/core/data/models/product/product_model.dart';
import 'package:pmd_solutions/core/data/utilities/storage/preferences_manager.dart';
import 'package:pmd_solutions/core/presentation/utilities/count_provider.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_bloc.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_event.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/widgets/animated_add_to_card.dart';
import 'package:pmd_solutions/core/presentation/widgets/base_state.dart';

class ProductCard extends StatefulWidget {
  final ProductModel product;
  final bool? showAddToCardIcon;
  final GlobalKey productKey;
  const ProductCard({
    super.key,
    required this.product,
    required this.productKey,
    this.showAddToCardIcon = true,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends BaseState<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.sp),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100.sp,
              height: 100.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                image: DecorationImage(
                  image: NetworkImage(widget.product.image),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(width: 16.sp),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5.sp),

                  Text(
                    '\$${widget.product.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: colors.greenColor,
                    ),
                  ),
                ],
              ),
            ),
            if (widget.showAddToCardIcon == true) ...[
              GestureDetector(
                onTap: addToCard,
                child: Icon(Icons.add_shopping_cart),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void addToCard() {
    context.read<ProductListBloc>().add(
      ProductListEvent.addToCard(product: widget.product),
    );
    context.read<CountProvider>().setCount =
        (PreferencesManager.getCount ?? 0) + 1;
    _runAddToCartAnimation(widget.productKey, widget.product.image);
  }

  void _runAddToCartAnimation(GlobalKey productKey, String imageUrl) {
    final productContext = productKey.currentContext;

    if (productContext == null) {
      return;
    }

    final productBox = productContext.findRenderObject() as RenderBox?;
    if (productBox == null) {
      return;
    }

    try {
      final overlay = Overlay.of(context);
      final overlayContext = overlay.context;
      final overlayBox = overlayContext.findRenderObject() as RenderBox?;
      if (overlayBox == null) return;

      final productPosition = productBox.localToGlobal(
        Offset(30, 30),
        ancestor: overlayBox,
      );

      final screenSize = MediaQuery.of(context).size;
      final basketPosition = Offset(
        screenSize.width - 100,
        MediaQuery.of(context).padding.top - 30,
      );
      OverlayEntry? _overlayEntry;

      _overlayEntry = OverlayEntry(
        builder:
            (context) => AnimatedAddToCartImage(
              imageUrl: imageUrl,
              startPosition: productPosition,
              endPosition: basketPosition,
              duration: const Duration(milliseconds: 700),
              onEnd: () {
                _overlayEntry?.remove();
                _overlayEntry = null;
              },
            ),
      );

      overlay.insert(_overlayEntry!);
    } catch (e) {
      debugPrint('Animation error: $e');
    }
  }
}
