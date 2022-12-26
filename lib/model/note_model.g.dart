// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteItem _$$_NoteItemFromJson(Map<String, dynamic> json) => _$_NoteItem(
      id: json['id'] as int,
      judul: json['judul'] as String,
      deskripsi: json['deskripsi'] as String,
      createAt: json['create_at'] as String,
      warna: json['warna'] as String,
    );

Map<String, dynamic> _$$_NoteItemToJson(_$_NoteItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'judul': instance.judul,
      'deskripsi': instance.deskripsi,
      'create_at': instance.createAt,
      'warna': instance.warna,
    };
