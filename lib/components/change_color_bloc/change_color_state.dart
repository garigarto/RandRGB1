import 'package:equatable/equatable.dart';
abstract class ChangeColorState extends Equatable {
  ChangeColorState();

  @override
  List<Object> get props => <Object>[];
}
class ChangeColorInitial extends ChangeColorState {

}
class StateUpdated extends ChangeColorState {

}
class OnTapState extends ChangeColorState {

}