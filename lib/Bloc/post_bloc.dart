import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:instegram/Repository/Modelclass/post.dart';
import 'package:meta/meta.dart';

import '../Repository/API/api_post.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  late Post post;
  Postapi postapi=Postapi();
  PostBloc() : super(PostInitial()) {
    on<FetcpostEvent>((event, emit) async{
      emit (postBlocloading());
      try{
    post= await Postapi().getpost(event.postid);
    emit(postBlocloaded());

      }
      catch(a){
        emit(postBlocerror());

      }
      // TODO: implement event handler
    });
  }
}
