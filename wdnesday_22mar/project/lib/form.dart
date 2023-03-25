import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'controllers/post_controller.dart';
import 'models/post.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _titleController = TextEditingController();
  final _bodyController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _keyForm,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              TextFormField(
                controller: _titleController,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "This field is required";
                  }
                  return null;
                },
                decoration: InputDecoration(hintText: "Title...."),
              ),
              TextFormField(
                controller: _bodyController,
                maxLines: 3,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "This field is required";
                  }
                  return null;
                },
                decoration: InputDecoration(hintText: "Body...."),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_keyForm.currentState!.validate()) {
                      PostController()
                          .create(Post(
                        userId: 0,
                        id: 0,
                        title: _titleController.text,
                        body: _bodyController.text,
                      ))
                          .then((value) {
                        EasyLoading.showSuccess("Done");
                      }).catchError((ex) {
                        EasyLoading.showError(ex.toString());
                      });
                    }
                  },
                  child: Text("Submit"))
            ])),
      ),
    );
  }
}
