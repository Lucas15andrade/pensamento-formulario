import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_pensamento/app/modules/sentimento/pages/descrever/descrever_bloc.dart';
import 'package:flutter_pensamento/app/modules/sentimento/sentimento_module.dart';

void main() {

  initModule(SentimentoModule());
  DescreverBloc bloc;
  
  setUp(() {
      bloc = SentimentoModule.to.bloc<DescreverBloc>();
  });

  group('DescreverBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<DescreverBloc>());
    });
  });

}
  