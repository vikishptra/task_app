import 'package:task_app/model/model.dart';
import 'package:task_app/model/request/create_note_request.dart';
import 'package:task_app/model/request/update_note_request.dart';

abstract class BaseNoteRepository {
  Future<AppResponse<List<NoteItem>?>> getManyData({
    required int halaman,
    int jumlahHalaman = 15,
  });

  Future<AppResponse<NoteItem?>> todoCreateTask(CreateNoteRequest request);

  Future<AppResponse<NoteItem?>> todoUpdateTask(
      UpdateNoteRequest request, int id);

  Future<AppResponse<NoteItem?>> getFirstData(int id);

  Future<AppResponse<int?>> todoDeleteTask(int id);
}
