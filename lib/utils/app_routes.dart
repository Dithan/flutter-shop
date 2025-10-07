import 'package:go_router/go_router.dart';
import 'package:shop/models/product.dart';
import 'package:shop/screens/cart_page.dart';
import 'package:shop/screens/product_detail_page.dart';
import 'package:shop/screens/products_overview_page.dart';

final GoRouter appRoutes = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const ProductsOverviewPage(),
  ),
  GoRoute(
    path: '/product-detail',
    builder: (context, state) {
      final product = state.extra as Product;
      return ProductDetailPage(
        product: product,
      );
    },
  ),
  GoRoute(
    path: '/cart-page',
    builder: (context, state) => CartPage(),
  )
]);
