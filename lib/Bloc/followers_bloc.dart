import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/API/api_followers.dart';
import '../Repository/Modelclass/followers.dart';

part 'followers_event.dart';
part 'followers_state.dart';

class FollowersBloc extends Bloc<FollowersEvent, FollowersState> {
  late Followers followers;
  Followersapi followersapi=Followersapi();
  FollowersBloc() : super(FollowersInitial()) {
    on<FetcfollowersEvent>((event, emit) async{
      emit(followersBlocloading());
      try {
        followers= await followersapi.getfollow(event.followersid);
        emit(followersBlocloaded()
        );

      }
      catch(a){
        emit(followersBlocerror()
        );
      }
      // TODO: implement event handler
    });
  }
}
