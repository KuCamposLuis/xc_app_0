import 'package:go_router/go_router.dart';
import 'package:xc_app_0/presentation/screens/screens.dart';
export 'package:xc_app_0/presentation/screens/Cotizaciones/home_screen.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: "/",
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen())
]);
