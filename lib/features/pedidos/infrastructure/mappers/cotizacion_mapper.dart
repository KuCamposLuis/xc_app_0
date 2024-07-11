import 'package:xc_app_0/features/pedidos/domain/entities/pedidos.dart';

import '../models/Cotizaciones/cotizacion_cotizaciondb.dart';

class PedidoMapper {
  static Pedido pedidoDBToEntity(VtaPreGv pedidodb) => Pedido(
      id: pedidodb.id,
      serFol: pedidodb.ser_Fol,
      serDoc: pedidodb.ser_Doc,
      altUsr: pedidodb.alt_Usr);
}
