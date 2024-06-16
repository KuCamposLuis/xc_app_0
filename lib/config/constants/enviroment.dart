import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String apiXelcronKey =
      dotenv.env['API_TEST_2024_KEY'] ?? 'No key found';
}
