import 'package:json_annotation/json_annotation.dart';

part 'minuman.g.dart'; // Nama file yang di-generate oleh build_runner

@JsonSerializable() // Tambahkan anotasi ini
class Minuman {
  String id_minuman;
  String nama_minuman;
  String deskripsi_minuman;
  double harga_minuman;
  bool status_minuman;

  Minuman({
    required this.id_minuman,
    required this.nama_minuman,
    required this.deskripsi_minuman,
    required this.harga_minuman,
    required this.status_minuman,
  });

  // Factory constructor untuk deserialisasi
  factory Minuman.fromJson(Map<String, dynamic> json) => _$MinumanFromJson(json);

  // Fungsi toJson untuk serialisasi
  Map<String, dynamic> toJson() => _$MinumanToJson(this);
}
