import 'package:bloc/bloc.dart';
import 'package:instegram/Bloc/followers_bloc.dart';
import 'package:instegram/Repository/API/api_following.dart';
import 'package:meta/meta.dart';

import '../Repository/Modelclass/following.dart';

part 'following_event.dart';
part 'following_state.dart';

class FollowingBloc extends Bloc<FollowingEvent, FollowingState> {
  late Following following;
  Followingapi followingapi=Followingapi();
  FollowingBloc() : super(FollowingInitial()) {
    on<FetcfollowingEvent>((event, emit) async {
      emit(followingBlocloading());
      try {
        following= await followingapi.getfollowing(event.followingid);
        emit(followingBlocloaded()
        );

      }
      catch(a){
        emit(followingBlocerror()
        );
      }
      // TODO: implement event handler
    });
  }
}
