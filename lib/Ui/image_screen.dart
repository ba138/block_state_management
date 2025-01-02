import 'dart:io';

import 'package:block_statemanagement/Bloc/imagePicker/image_picker_bloc.dart';
import 'package:block_statemanagement/Bloc/imagePicker/image_picker_event.dart';
import 'package:block_statemanagement/Bloc/imagePicker/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick Image"),
        centerTitle: true,
      ),
      body: BlocBuilder<ImagePickerBloc, ImagePickerState>(
          builder: (context, state) {
        if (state.file == null) {
          return InkWell(
            onTap: () {
              context.read<ImagePickerBloc>().add(CamerCapture());
            },
            child: CircleAvatar(
              child: Icon(Icons.camera),
            ),
          );
        } else {
          return Image.file(File(state.file!.path));
        }
      }),
    );
  }
}
