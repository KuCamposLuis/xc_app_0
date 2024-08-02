import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xc_app_0/config/router/app_router.dart';
import 'package:xc_app_0/config/theme/app_theme.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> main() async {
  try {
    await dotenv.load(fileName: ".env");
  } catch (e) {
    // Manejar el error si el archivo .env no se encuentra
    print('Error cargando el archivo .env: $e');
  }

  WidgetsFlutterBinding.ensureInitialized();
  await _requestPermissions();

  runApp(const ProviderScope(child: MyApp()));
}

Future<void> _requestPermissions() async {
  await Permission.storage.request();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().getTheme(),
    );
  }
}
