// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minuman.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Minuman _$MinumanFromJson(Map<String, dynamic> json) => Minuman(
      id_minuman: json['id_minuman'] as String,
      nama_minuman: json['nama_minuman'] as String,
      deskripsi_minuman: json['deskripsi_minuman'] as String,
      harga_minuman: (json['harga_minuman'] as num).toDouble(),
      status_minuman: json['status_minuman'] as bool,
    );

Map<String, dynamic> _$MinumanToJson(Minuman instance) => <String, dynamic>{
      'id_minuman': instance.id_minuman,
      'nama_minuman': instance.nama_minuman,
      'deskripsi_minuman': instance.deskripsi_minuman,
      'harga_minuman': instance.harga_minuman,
      'status_minuman': instance.status_minuman,
    };
