import 'package:go_router/go_router.dart';
import 'package:xc_app_0/features/catalogo/presentation/screens/catalogo_home_screen.dart';
import 'package:xc_app_0/features/catalogo/presentation/views/articulos_view.dart';
import 'package:xc_app_0/features/catalogo/presentation/views/entidades_view.dart';
import 'package:xc_app_0/features/catalogo/presentation/views/serdoc_view.dart';
import 'package:xc_app_0/features/catalogo/presentation/views/unidad_view.dart';
import 'package:xc_app_0/features/cotizaciones/cotizaciones.dart';

import 'package:xc_app_0/features/home/screens/home_screen.dart';
import 'package:xc_app_0/features/home/views/home_view.dart';

import '../../features/auth/auth.dart';
import '../../features/cotizaciones/presentation/views/storage/local_cotizacion_home_view.dart';
import '../../features/cotizaciones/presentation/views/storage/storage_cotizacion_view.dart';

final appRouter = GoRouter(initialLocation: '/login', routes: [
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  ShellRoute(
      builder: (context, state, child) {
        return HomeScreen(
          childView: child,
        );
      },
      routes: [
        GoRoute(
            path: "/cotizaciones",
            builder: (context, state) {
              return const CotizacionesScreen();
            },
            routes: [
              GoRoute(
                  path: "cotizacion/:id",
                  builder: (context, state) {
                    final cotizacionId = state.pathParameters['id'] ?? 'no-id';
                    return CotizacionIndView(
                      cotizacionId: cotizacionId,
                    );
                  }),
              GoRoute(
                path: "Nueva_Cotizacion",
                builder: (context, state) => const NewCotizacionView(),
              ),
            ]),
        GoRoute(
          path: "/pedidos",
          builder: (context, state) {
            return const CotizacionesScreen();
          },
        ),
        GoRoute(
          path: "/",
          builder: (context, state) {
            return const HomeView();
          },
        ),
        GoRoute(
          path: "/facturas",
          builder: (context, state) {
            return const LocalCotizacionHomeView();
          },
          routes: [
            GoRoute(
                path: "cotizacion/:id",
                builder: (context, state) {
                  final cotizacionIdString = state.pathParameters['id'] ?? '0';
                  final cotizacionId = int.tryParse(cotizacionIdString) ?? 0;
                  return LocalCotizacionIndView(
                    cotizacionId: cotizacionId,
                  );
                }),
          ],
        ),
        GoRoute(
            path: "/catalogo",
            builder: (context, state) {
              return const CatalogoHomeScreen();
            },
            routes: [
              GoRoute(
                path: "Serie_Documentos",
                builder: (context, state) => const SerieDocView(),
              ),
              GoRoute(
                path: "Articulos_Servicios",
                builder: (context, state) => const ArticulosView(),
              ),
              GoRoute(
                path: "Entidades",
                builder: (context, state) => const EntidadesView(),
              ),
              GoRoute(
                path: "Unidades",
                builder: (context, state) => const UnidadesView(),
              ),
            ]),
      ])
]);
