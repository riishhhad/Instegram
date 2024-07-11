part of 'inste_bloc.dart';

@immutable
sealed class InsteEvent {}
class FetcinsteEvent extends InsteEvent{
  final String idinsta;
  FetcinsteEvent({required this.idinsta});
}
