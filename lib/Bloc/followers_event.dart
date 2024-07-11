part of 'followers_bloc.dart';

@immutable
sealed class FollowersEvent {}

class FetcfollowersEvent extends FollowersEvent{
  final String followersid;
  FetcfollowersEvent({required this.followersid});
}
