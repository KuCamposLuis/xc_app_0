import 'package:xc_app_0/features/catalogo/domain/entities/entidades.dart';
import 'package:xc_app_0/features/catalogo/infrastructure/models/entidades/entidades_xelcron.dart';

class EntidadesMapper {
  static Entidades entidadesDBToEntity(EntidadesXelcron entidades) => Entidades(
        id: entidades.id,
        name: entidades.name,
        emp: entidades.emp,
        empDiv: entidades.empDiv,
        cfgErp: entidades.cfgErp,
      );
}
