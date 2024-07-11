part of 'following_bloc.dart';

@immutable
sealed class FollowingEvent {}

class FetcfollowingEvent extends FollowingEvent{
final String followingid;
FetcfollowingEvent({required this.followingid});
}
