import 'package:flutter/material.dart';

Future<bool> showKonfirmasiDelete(BuildContext context,
    {required String judulPesan, required String isiPesan}) async {
  bool flag = false;
  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        judulPesan,
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
      ),
      content: Text(
        isiPesan,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context, 'Cancel');
                  flag = false;
                },
                child: const Text("CANCEL")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context, "Delete");
                  flag = true;
                },
                child: const Text("DELETE"))
          ],
        )
      ],
    ),
  );
  return flag;
}
