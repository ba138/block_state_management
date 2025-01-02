import 'package:equatable/equatable.dart';

abstract class ImagePickerEvent extends Equatable {
  const ImagePickerEvent();
  @override
  List<Object> get props => [];
}

class CamerCapture extends ImagePickerEvent {}

class GalleryImagePicker extends ImagePickerEvent {}
