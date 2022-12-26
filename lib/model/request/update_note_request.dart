import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_note_request.freezed.dart';
part 'update_note_request.g.dart';

@freezed
class UpdateNoteRequest with _$UpdateNoteRequest {
  factory UpdateNoteRequest({
    String? judul,
    String? deskripsi,
    String? warna,
  }) = _UpdateNoteRequest;

  factory UpdateNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateNoteRequestFromJson(json);
}
