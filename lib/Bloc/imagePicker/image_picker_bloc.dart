import 'package:block_statemanagement/Bloc/imagePicker/image_picker_event.dart';
import 'package:block_statemanagement/Bloc/imagePicker/image_picker_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  ImagePickerBloc() : super(const ImagePickerState());
}
