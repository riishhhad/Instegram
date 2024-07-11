import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/API/apilight_main.dart';
import '../Repository/Modelclass/highlight.dart';

part 'highlight_event.dart';

part 'highlight_state.dart';

class HighlightBloc extends Bloc<HighlightEvent, HighlightState> {
  late Highlight highlight;
  Highapi highapi=Highapi();
  HighlightBloc() : super(HighlightInitial()) {
    on<FetchighlightEvent>((event, emit) async {
      emit(highlightBlocloading());
      try {
        highlight = await highapi.getlight(event.highlightid);
        emit(highlightBlocloaded()
      );

      }
      catch(a){
      emit(highlightBlocerror()
      );
      }
      // TODO: implement event handler
    });
  }
}
