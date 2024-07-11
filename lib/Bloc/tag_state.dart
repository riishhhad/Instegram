part of 'tag_bloc.dart';

@immutable
sealed class TagState {}

final class TagInitial extends TagState {}

final class tagInitial  extends TagState {}
class tagBlocloading extends TagState {}
class tagBlocloaded extends TagState {}
class tagBlocerror extends TagState {}

