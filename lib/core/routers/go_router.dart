import 'package:book_mart/core/routers/constant_router.dart';
import 'package:book_mart/features/home/presentation/views/book_details_view.dart';
import 'package:book_mart/features/home/presentation/views/home_view.dart';
import 'package:book_mart/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

GoRouter goRouter() {
  return GoRouter(routes: [
    GoRoute(
      path: splashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: bookDetailsView,
      builder: (context, state) => const BookDetailsView(),
    ),
  ]);
}
// to send data for next page  
// GoRoute(
//   path: '/users/:userId',
//   builder: (context, state) => const UserScreen(id: state.pathParameters['userId']),
// ), 