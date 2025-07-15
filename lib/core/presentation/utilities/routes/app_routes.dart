import 'package:go_router/go_router.dart';
import 'package:pmd_solutions/core/presentation/views/card_screen/card_screen.dart';
import 'package:pmd_solutions/core/presentation/views/product_details_screen/product_details_screen.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/product_list_screen.dart';

class AppRoutes {
  static const productListRoute = '/productList';
  static const productDetailsRoute = '/productDetails';
  static const cardRoute = '/card';
  static final GoRouter router = GoRouter(
    initialLocation: productListRoute,

    routes: [
      GoRoute(
        path: productListRoute,
        pageBuilder:
            (context, state) => NoTransitionPage(child: ProductListPage()),
      ),

      GoRoute(
        path: cardRoute,
        pageBuilder: (context, state) => NoTransitionPage(child: CardScreen()),
      ),
      GoRoute(
        path: '$productDetailsRoute/:productID',
        pageBuilder: (context, state) {
          final productID =
              int.tryParse(state.pathParameters['productID'] ?? '') ?? 0;
          return NoTransitionPage(
            child: ProductDetailsScreen(productID: productID),
          );
        },
      ),
    ],
  );
}
