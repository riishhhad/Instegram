import 'package:bloc/bloc.dart';
import 'package:instegram/Bloc/post_bloc.dart';
import 'package:instegram/Repository/API/api_tag.dart';
import 'package:meta/meta.dart';

import '../Repository/Modelclass/tag.dart';

part 'tag_event.dart';
part 'tag_state.dart';

class TagBloc extends Bloc<TagEvent, TagState> {
  late Tag tag;
  Tagapi tagapi=Tagapi();
  TagBloc() : super(TagInitial()) {
    on<FetcTagEvent>((event, emit)async{
      emit(tagBlocloading());
      try {
        tag = await tagapi.gettag(event.tagid);
        emit(tagBlocloaded());

      }
      catch(a){
        emit(tagBlocerror()
        );
      }
      // TODO: implement event handler
    });
  }
}
