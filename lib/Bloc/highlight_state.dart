part of 'highlight_bloc.dart';

@immutable
sealed class HighlightState {}

final class HighlightInitial extends HighlightState {}

final class highlightInitial  extends HighlightState {}
class highlightBlocloading extends HighlightState {}
class highlightBlocloaded extends HighlightState {}
class highlightBlocerror extends HighlightState {}
