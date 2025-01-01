import 'package:block_statemanagement/Bloc/switch/switch_bloc.dart';
import 'package:block_statemanagement/Bloc/switch/switch_event.dart';
import 'package:block_statemanagement/Bloc/switch/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 0.2; // Initialize the slider value.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            BlocBuilder<SwitchBloc, SwitchState>(builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Notifications"),
                  Switch(
                      value: state.isEnabled,
                      onChanged: (value) {
                        context
                            .read<SwitchBloc>()
                            .add(EnableOrDisableNotification());
                      }),
                ],
              );
            }),
            Container(
              height: 200,
              color: Colors.red
                  .withOpacity(0.2), // Use withOpacity instead of withValues.
            ),
            Slider(
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value; // Update the slider value.
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
