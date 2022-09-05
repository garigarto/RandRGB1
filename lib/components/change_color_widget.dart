import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randrgb/components/change_color_bloc/change_color_bloc.dart';
import 'package:randrgb/components/change_color_bloc/change_color_event.dart';
import 'package:randrgb/components/change_color_bloc/change_color_state.dart';
import 'change_color_bloc/bloc.dart' as change_color_bloc;

class ChangeColorWidget extends StatefulWidget {
  const ChangeColorWidget({Key? key}) : super(key: key);

  @override
  State<ChangeColorWidget> createState() => _ChangeColorWidgetState();
}

class _ChangeColorWidgetState extends State<ChangeColorWidget> {
  Color backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return BlocProvider<ChangeColorBloc>(
        create: (final BuildContext context) => ChangeColorBloc(),
        child: BlocListener<ChangeColorBloc, ChangeColorState>(listener:
            (final BuildContext context, final ChangeColorState state) async {
          //If state
          if (state is change_color_bloc.OnTapState) {
            backgroundColor = Color((Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0);
          }
          BlocProvider.of<ChangeColorBloc>(context).add(UpdateEvent());
        }, child: BlocBuilder<ChangeColorBloc, ChangeColorState>(builder:
            (final BuildContext context, final ChangeColorState state) {
          return GestureDetector(
            onTap: () =>
            {BlocProvider.of<ChangeColorBloc>(context).add(OnTapEvent())},
            child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(color: backgroundColor),
                child:const Center(child: Text("Hey there")),
            ),
          );
        })));
  }
}
