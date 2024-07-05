part of 'inste_bloc.dart';

@immutable
sealed class InsteState {}

final class InsteInitial extends InsteState {}

final class insteInitial extends InsteState {}
class insteBlocloading extends InsteState {}
class insteBlocloaded extends InsteState {}
class insteBlocerror extends InsteState {}