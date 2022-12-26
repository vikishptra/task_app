import 'package:dio/dio.dart';
import 'package:task_app/model/request/update_note_request.dart';
import 'package:task_app/model/request/create_note_request.dart';
import 'package:task_app/model/note_model.dart';
import 'package:task_app/model/app_response.dart';
import 'package:task_app/repositories/core/endpoint.dart';
import 'package:task_app/repositories/note/bash_note_repository.dart';
import 'package:task_app/utils/dio_client/dio_client.dart';

class NoteRepository extends BaseNoteRepository {
  NoteRepository({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().dio;

  final Dio _dioClient;

  @override
  Future<AppResponse<NoteItem?>> todoCreateTask(
      CreateNoteRequest request) async {
    final response = await _dioClient.post(
      EndpointApiNote.noteCreateTask,
      data: request.toJson(),
    );

    return AppResponse<NoteItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? NoteItem.fromJson(json)
          : null,
    );
  }

  @override
  Future<AppResponse<int?>> todoDeleteTask(int id) async {
    final response =
        await _dioClient.delete("${EndpointApiNote.noteDeleteTask}$id");

    return AppResponse<int?>.fromJson(
      response.data,
      (json) => response.data['success'] && json != null ? json as int : null,
    );
  }

  @override
  Future<AppResponse<NoteItem?>> getFirstData(int id) async {
    final response =
        await _dioClient.get("${EndpointApiNote.noteGetFirstTask}$id");

    return AppResponse<NoteItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? NoteItem.fromJson(json)
          : null,
    );
  }

  @override
  Future<AppResponse<List<NoteItem>?>> getManyData(
      {required int halaman, int jumlahHalaman = 15}) async {
    final response = await _dioClient.get(
      EndpointApiNote.noteGetManyTask,
      queryParameters: {'page': halaman, 'page_size': jumlahHalaman},
    );

    return AppResponse<List<NoteItem>?>.fromJson(response.data, (dynamic json) {
      if (json != null && response.data['success']) {
        return (json as List<dynamic>)
            .map((e) => NoteItem.fromJson(e))
            .toList();
      }
      return null;
    });
  }

  @override
  Future<AppResponse<NoteItem?>> todoUpdateTask(
      UpdateNoteRequest request, int id) async {
    final response = await _dioClient.put(
      "${EndpointApiNote.noteUpdateTask}$id",
      data: request.toJson(),
    );

    return AppResponse<NoteItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? NoteItem.fromJson(json)
          : null,
    );
  }
}
