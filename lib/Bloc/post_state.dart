part of 'post_bloc.dart';

@immutable
sealed class PostState {}

final class PostInitial extends PostState {}


final class postInitial  extends  PostState {}
class postBlocloading extends  PostState {}
class postBlocloaded extends  PostState {}
class postBlocerror extends  PostState {}

