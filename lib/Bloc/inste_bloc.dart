import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/API/api_main.dart';
import '../Repository/Modelclass/inste.dart';

part 'inste_event.dart';
part 'inste_state.dart';

class InsteBloc extends Bloc<InsteEvent, InsteState> {
  late Inste inste;
  Insteapi  insteApi= Insteapi();

  InsteBloc() : super(InsteInitial()) {
    on<FetcinsteEvent>((event, emit) async{
      emit (insteBlocloading());
      try{
        inste= await insteApi.getinste(event.idinsta);
        emit(insteBlocloaded());

      }
      catch(a){
        emit(insteBlocerror());
      }
      // TODO: implement event handler
    });
  }
}
