import 'package:xc_app_0/features/catalogo/infrastructure/models/user/user_xelcron.dart';

class AllUserResponse {
  final int count;
  final int totalCount;
  final List<UsrVb> usrVb;

  AllUserResponse({
    required this.count,
    required this.totalCount,
    required this.usrVb,
  });

  factory AllUserResponse.fromJson(Map<String, dynamic> json) =>
      AllUserResponse(
        count: json["count"],
        totalCount: json["total_count"],
        usrVb: List<UsrVb>.from(json["usr_vb"].map((x) => UsrVb.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "total_count": totalCount,
        "usr_vb": List<dynamic>.from(usrVb.map((x) => x.toJson())),
      };
}
