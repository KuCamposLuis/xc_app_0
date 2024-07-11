import 'package:go_router/go_router.dart';
import 'package:xc_app_0/features/catalogo/presentation/screens/catalogo_home_screen.dart';
import 'package:xc_app_0/features/catalogo/presentation/views/articulos_view.dart';
import 'package:xc_app_0/features/catalogo/presentation/views/entidades_view.dart';
import 'package:xc_app_0/features/catalogo/presentation/views/serdoc_view.dart';
import 'package:xc_app_0/features/catalogo/presentation/views/unidad_view.dart';
import 'package:xc_app_0/features/cotizaciones/cotizaciones.dart';

import 'package:xc_app_0/features/home/screens/home_screen.dart';
import 'package:xc_app_0/features/home/views/home_view.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
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
            return const CotizacionesScreen();
          },
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
