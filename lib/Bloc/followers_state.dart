part of 'followers_bloc.dart';

@immutable
sealed class FollowersState {}

final class FollowersInitial extends FollowersState {}

final class followersInitial extends FollowersState {}
class followersBlocloading extends FollowersState {}
class followersBlocloaded extends FollowersState {}
class followersBlocerror extends FollowersState {}
