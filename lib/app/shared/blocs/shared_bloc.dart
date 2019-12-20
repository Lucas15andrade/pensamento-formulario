import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_pensamento/app/shared/models/sentimento_model.dart';
import 'package:rxdart/subjects.dart';

class SharedBloc extends BlocBase {

  BehaviorSubject<List<SentimentoModel>> _listController = BehaviorSubject.seeded([]);

  Stream get listOut => _listController.stream;

  expulgar(){
    _listController.add([]);
  }

  addNovoSentimento(SentimentoModel sentimentoModel) {
    _listController.value.add(sentimentoModel);
    _listController.add(_listController.value);
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    _listController.close();
    super.dispose();
  }
}
