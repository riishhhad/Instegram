part of 'highlight_bloc.dart';

@immutable
sealed class HighlightEvent {}

class FetchighlightEvent extends HighlightEvent{
final String highlightid;
FetchighlightEvent({required this.highlightid});
}
