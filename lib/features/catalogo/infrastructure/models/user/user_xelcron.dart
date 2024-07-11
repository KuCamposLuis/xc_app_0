class UsrVb {
  final int id;
  final String name;
  final String img;
  final String prm;
  final String emp;
  final int ent;
  final bool tecIntAce;
  final DateTime fchAlt;
  final int niv;
  final String sndPdf;
  final String correo;
  final String smtp;
  final SmtpSrv smtpSrv;
  final int smtpPto;
  final String smtpUsr;
  final String smtpPas;
  final bool smtpAut;
  final String smtpCif;
  final String emlAto;
  final String emlMsg;
  final String tema;
  final String asp;
  final TemCmCla temCla;
  final String temOsc;
  final TemCmCla temComCla;
  final String temComOsc;
  final String auditoria;
  final bool off;
  final int offUsr;
  final OffTim offTim;
  final int altUsr;
  final DateTime altTim;
  final int modUsr;
  final DateTime modTim;
  final String extensionUsrTpv;

  UsrVb({
    required this.id,
    required this.name,
    required this.img,
    required this.prm,
    required this.emp,
    required this.ent,
    required this.tecIntAce,
    required this.fchAlt,
    required this.niv,
    required this.sndPdf,
    required this.correo,
    required this.smtp,
    required this.smtpSrv,
    required this.smtpPto,
    required this.smtpUsr,
    required this.smtpPas,
    required this.smtpAut,
    required this.smtpCif,
    required this.emlAto,
    required this.emlMsg,
    required this.tema,
    required this.asp,
    required this.temCla,
    required this.temOsc,
    required this.temComCla,
    required this.temComOsc,
    required this.auditoria,
    required this.off,
    required this.offUsr,
    required this.offTim,
    required this.altUsr,
    required this.altTim,
    required this.modUsr,
    required this.modTim,
    required this.extensionUsrTpv,
  });

  factory UsrVb.fromJson(Map<String, dynamic> json) => UsrVb(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        prm: json["prm"],
        emp: json["emp"],
        ent: json["ent"],
        tecIntAce: json["tec_int_ace"],
        fchAlt: DateTime.parse(json["fch_alt"]),
        niv: json["niv"],
        sndPdf: json["snd_pdf"],
        correo: json["___correo______________"],
        smtp: json["smtp"],
        smtpSrv: smtpSrvValues.map[json["smtp_srv"]]!,
        smtpPto: json["smtp_pto"],
        smtpUsr: json["smtp_usr"],
        smtpPas: json["smtp_pas"],
        smtpAut: json["smtp_aut"],
        smtpCif: json["smtp_cif"],
        emlAto: json["eml_ato"],
        emlMsg: json["eml_msg"],
        tema: json["___tema______________"],
        asp: json["asp"],
        temCla: temCmClaValues.map[json["tem_cla"]]!,
        temOsc: json["tem_osc"],
        temComCla: temCmClaValues.map[json["tem_com_cla"]]!,
        temComOsc: json["tem_com_osc"],
        auditoria: json["___auditoria______________"],
        off: json["off"],
        offUsr: json["off_usr"],
        offTim: offTimValues.map[json["off_tim"]]!,
        altUsr: json["alt_usr"],
        altTim: DateTime.parse(json["alt_tim"]),
        modUsr: json["mod_usr"],
        modTim: DateTime.parse(json["mod_tim"]),
        extensionUsrTpv: json["extension_usr_tpv"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
        "prm": prm,
        "emp": emp,
        "ent": ent,
        "tec_int_ace": tecIntAce,
        "fch_alt": fchAlt.toIso8601String(),
        "niv": niv,
        "snd_pdf": sndPdf,
        "___correo______________": correo,
        "smtp": smtp,
        "smtp_srv": smtpSrvValues.reverse[smtpSrv],
        "smtp_pto": smtpPto,
        "smtp_usr": smtpUsr,
        "smtp_pas": smtpPas,
        "smtp_aut": smtpAut,
        "smtp_cif": smtpCif,
        "eml_ato": emlAto,
        "eml_msg": emlMsg,
        "___tema______________": tema,
        "asp": asp,
        "tem_cla": temCmClaValues.reverse[temCla],
        "tem_osc": temOsc,
        "tem_com_cla": temCmClaValues.reverse[temComCla],
        "tem_com_osc": temComOsc,
        "___auditoria______________": auditoria,
        "off": off,
        "off_usr": offUsr,
        "off_tim": offTimValues.reverse[offTim],
        "alt_usr": altUsr,
        "alt_tim": altTim.toIso8601String(),
        "mod_usr": modUsr,
        "mod_tim": modTim.toIso8601String(),
        "extension_usr_tpv": extensionUsrTpv,
      };
}

enum OffTim { INVALID_DATE }

final offTimValues = EnumValues({"Invalid Date": OffTim.INVALID_DATE});

enum SmtpSrv { SMTP_GMAIL_COM }

final smtpSrvValues = EnumValues({"smtp.gmail.com": SmtpSrv.SMTP_GMAIL_COM});

enum TemCmCla { EMPTY, LOW_CODE_TEMA }

final temCmClaValues =
    EnumValues({"": TemCmCla.EMPTY, "Low_Code_Tema": TemCmCla.LOW_CODE_TEMA});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
