import 'package:block_statemanagement/Bloc/counter/counter_bloc.dart';
import 'package:block_statemanagement/Bloc/imagePicker/image_picker_bloc.dart';
import 'package:block_statemanagement/Ui/image_screen.dart';
// import 'package:block_statemanagement/Ui/counter_screen.dart';
import 'package:block_statemanagement/Ui/slider_screen.dart';
import 'package:block_statemanagement/Bloc/switch/switch_bloc.dart';
import 'package:block_statemanagement/Utils/image_picker_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => SwitchBloc()),
        BlocProvider(create: (_) => ImagePickerBloc(ImagePickerUtils)),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ImageScreen(),
      ),
    );
  }
}
