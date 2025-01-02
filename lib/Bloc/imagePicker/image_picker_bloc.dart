import 'package:block_statemanagement/Bloc/imagePicker/image_picker_event.dart';
import 'package:block_statemanagement/Bloc/imagePicker/image_picker_state.dart';
import 'package:block_statemanagement/Utils/image_picker_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtils imagePickerUtils = ImagePickerUtils();
  ImagePickerBloc(imagePickerUtils) : super(const ImagePickerState()) {
    on<CamerCapture>(_pickeImageFromCamera);
    on<GalleryImagePicker>(_pickImageFromGallery);
  }
  void _pickeImageFromCamera(
      CamerCapture event, Emitter<ImagePickerState> emit) async {
    XFile? file = await imagePickerUtils.caputreImageFromCamera();
    emit(state.copyWith(file: file));
  }

  void _pickImageFromGallery(
      GalleryImagePicker event, Emitter<ImagePickerState> emit) async {
    XFile? file = await imagePickerUtils.pickImageFromGallery();
    emit(state.copyWith(file: file));
  }
}
