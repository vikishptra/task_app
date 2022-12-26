// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateNoteRequest _$$_CreateNoteRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateNoteRequest(
      judul: json['judul'] as String,
      deskripsi: json['deskripsi'] as String,
      warna: json['warna'] as String,
    );

Map<String, dynamic> _$$_CreateNoteRequestToJson(
        _$_CreateNoteRequest instance) =>
    <String, dynamic>{
      'judul': instance.judul,
      'deskripsi': instance.deskripsi,
      'warna': instance.warna,
    };
