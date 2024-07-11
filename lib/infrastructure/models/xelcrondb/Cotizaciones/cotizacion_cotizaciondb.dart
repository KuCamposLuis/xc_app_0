class VtaPreGvFromXelcron {
  final int id;
  final String
      ser_Fol; //! Esta variable es importante para La informacion de la cotizacion general
  final int
      ser_Doc; //! Esta variable es importante para La informacion de la cotizacion general
  final int
      alt_Usr; //! Esta variable es importante para La informacion de la cotizacion general

  VtaPreGvFromXelcron({
    required this.id,
    required this.ser_Fol,
    required this.ser_Doc,
    required this.alt_Usr,
  });

  factory VtaPreGvFromXelcron.fromJson(Map<String, dynamic> json) =>
      VtaPreGvFromXelcron(
        id: json["id"],
        ser_Fol: json["ser_fol"] ?? "",
        ser_Doc: json["ser_doc"] ?? 0,
        alt_Usr: json["alt_usr"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ser_fol": ser_Fol,
        "ser_doc": ser_Doc,
        "alt_usr": alt_Usr,
      };
}
