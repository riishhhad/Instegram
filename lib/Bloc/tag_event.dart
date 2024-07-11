part of 'tag_bloc.dart';

@immutable
sealed class TagEvent {}

class FetcTagEvent extends TagEvent{
  final String tagid;
  FetcTagEvent ({required this.tagid});
}