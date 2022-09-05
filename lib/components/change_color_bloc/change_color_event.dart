import 'package:equatable/equatable.dart';



abstract class ChangeColorEvent extends Equatable {
  @override
  List<Object> get props => <Object>[];
}

class UpdateEvent extends ChangeColorEvent {}
class OnTapEvent extends ChangeColorEvent {}