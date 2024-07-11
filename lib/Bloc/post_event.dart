part of 'post_bloc.dart';

@immutable
sealed class PostEvent {}

class FetcpostEvent extends PostEvent{
  final String postid;
  FetcpostEvent ({required this.postid});
}

