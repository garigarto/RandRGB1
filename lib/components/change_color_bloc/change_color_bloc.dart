import 'package:flutter_bloc/flutter_bloc.dart';

import 'change_color_event.dart';
import 'change_color_state.dart';

class ChangeColorBloc extends Bloc<ChangeColorEvent, ChangeColorState> {
  ChangeColorBloc() : super(ChangeColorInitial());

  @override
  Stream<ChangeColorState> mapEventToState(ChangeColorEvent event) async* {
    if (event is UpdateEvent) {
      yield StateUpdated();
    }
    else if(event is OnTapEvent){
      yield OnTapState();
    }

  }
}