import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_pensamento/app/app_module.dart';
import 'package:flutter_pensamento/app/shared/blocs/shared_bloc.dart';

import '../../sentimento_bloc.dart';
import '../../sentimento_module.dart';

class DescreverBloc extends BlocBase {

  addModel(){
    var model = SentimentoModule.to.bloc<SentimentoBloc>().model;
    AppModule.to.bloc<SharedBloc>().addNovoSentimento(model);
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
  }

}
  