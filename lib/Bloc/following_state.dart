part of 'following_bloc.dart';

@immutable
sealed class FollowingState {}

final class FollowingInitial extends FollowingState {}

final class followingInitial extends FollowingState {}
class followingBlocloading extends FollowingState {}
class followingBlocloaded extends FollowingState {}
class followingBlocerror extends FollowingState {}

