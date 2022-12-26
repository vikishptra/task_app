import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/model.dart';
import '../../../utils/utils.dart';

class WidgetNoteList extends StatelessWidget {
  const WidgetNoteList({
    Key? key,
    required this.notes,
  }) : super(key: key);

  final List<NoteItem> notes;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final note = notes[index];

        return WidgetNoteListItem(
          noteItem: note,
          onPressed: (note) {
            print(note);
          },
        );
      }, childCount: 10),
    );
  }
}

class WidgetNoteListItem extends StatelessWidget {
  const WidgetNoteListItem(
      {Key? key, required this.noteItem, required this.onPressed})
      : super(key: key);

  final NoteItem noteItem;
  final void Function(NoteItem) onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(noteItem),
      child: Card(
          elevation: 5.0,
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Dismissible(
            key: ValueKey("dismissable-${noteItem.id}"),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Icon(
                      Icons.delete,
                      size: sizeIcon,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            confirmDismiss: ((direction) async {
              final resultPesan = showKonfirmasiDelete(context,
                  judulPesan: "TASK MANAGEMENT",
                  isiPesan: "Apakah anda yakin ingin menghapus Task ini ?");
              print(resultPesan);
              return resultPesan;
            }),
            onDismissed: ((direction) {
              print("Data berhasil di hapus");
            }),
            child: Container(
                height: 130.0,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          noteItem.judul,
                          style: const TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 17.0),
                        ),
                        Text(
                          noteItem.deskripsi,
                          maxLines: 2,
                          style:
                              const TextStyle(overflow: TextOverflow.ellipsis),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 20.0,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.calendar_today,
                            size: 15.0,
                          ),
                          const SizedBox(width: 5.0),
                          Text("Wednesday 8/3/2022")
                        ],
                      ),
                    )
                  ],
                )),
          )),
    );
  }
}
