import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';

@freezed
class NoteItem with _$NoteItem {
  factory NoteItem({
    required int id,
    required String judul,
    required String deskripsi,
    @JsonKey(name: "create_at") required String createAt,
    required String warna,
  }) = _NoteItem;

  factory NoteItem.fromJson(Map<String, dynamic> json) =>
      _$NoteItemFromJson(json);
}
