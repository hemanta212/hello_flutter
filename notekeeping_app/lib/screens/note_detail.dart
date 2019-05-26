import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NoteDetailState();
  }
}

class NoteDetailState extends State<NoteDetail> {
  var _formKey = GlobalKey<FormState>();
  var _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Note"),
      ),
      body: getNoteDetailView(),
    );
  }

  Widget getNoteDetailView() {
    return Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(_minimumPadding * 2),
          child: ListView(
            children: <Widget>[
              Text("WORK IN PROGRESS"),
            ],
          ),
        ));
  }

  //Widget genTextFormField(BuildContext context)
}
