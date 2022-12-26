import 'package:flutter/material.dart';

import '../../../model/model.dart';

class WidgetNoteGrid extends StatelessWidget {
  const WidgetNoteGrid({
    Key? key,
    required this.notes,
  }) : super(key: key);

  final List<NoteItem> notes;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          return const WidgetNoteGridItem();
        }, childCount: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.8));
  }
}

class WidgetNoteGridItem extends StatelessWidget {
  const WidgetNoteGridItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
          color: Colors.blue,
          elevation: 5.0,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Judul",
                      maxLines: 3,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          overflow: TextOverflow.fade,
                          fontSize: 17.0),
                    ),
                    Text("Deskripsi")
                  ],
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      size: 15.0,
                    ),
                    const SizedBox(width: 10.0),
                    Text("Wed 8/24/2022",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).hintColor))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
