// import 'dart:html';
// import 'dart:io' as io;
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:file_picker/file_picker.dart';

// class BottomSheet extends StatefulWidget {
//   BottomSheet({super.key});

//   @override
//   State<BottomSheet> createState() => _BottomSheetState();
// }

// class _BottomSheetState extends State<BottomSheet> {
//   File? file;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("16 April"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//                 onPressed: () async {
//                   // showModalBottomSheet(
//                   //     context: context,
//                   //     builder: (context) => SizedBox(
//                   //           height: 300,
//                   //           child: Center(
//                   //               child: ElevatedButton(
//                   //                   onPressed: () {
//                   //                     Navigator.pop(context);
//                   //                   },
//                   //                   child: Text("Dismiss"))),
//                   //         ));
//                   final ImagePicker picker = ImagePicker();
//                   final XFile? photo =
//                       await picker.pickImage(source: ImageSource.camera);
//                   if (photo != null) {
//                     setState(() {
//                       File(photo.path as List<Object>);
//                     });
//                   }
//                 },
//                 child: Text("open camera")),
//             Visibility(
//                 visible: file != null,
//                 child: Image.file(
//                   file! as io.File,
//                   width: 200,
//                   height: 200,
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
