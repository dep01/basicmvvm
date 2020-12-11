import 'dart:convert';

List<ProfileModel> profileModelFromMap(String str) => List<ProfileModel>.from(
    json.decode(str).map((x) => ProfileModel.fromMap(x)));

String profileModelToMap(List<ProfileModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ProfileModel {
  ProfileModel({
    this.idProfile,
    this.nama,
    this.nohp,
    this.alamat,
  });

  final String idProfile;
  final String nama;
  final String nohp;
  final String alamat;

  ProfileModel copyWith({
    String idProfile,
    String nama,
    String nohp,
    String alamat,
  }) =>
      ProfileModel(
        idProfile: idProfile ?? this.idProfile,
        nama: nama ?? this.nama,
        nohp: nohp ?? this.nohp,
        alamat: alamat ?? this.alamat,
      );

  factory ProfileModel.fromMap(Map<String, dynamic> json) => ProfileModel(
        idProfile: json["id_profile"],
        nama: json["nama"],
        nohp: json["nohp"],
        alamat: json["alamat"],
      );

  Map<String, dynamic> toMap() => {
        "id_profile": idProfile,
        "nama": nama,
        "nohp": nohp,
        "alamat": alamat,
      };
}
