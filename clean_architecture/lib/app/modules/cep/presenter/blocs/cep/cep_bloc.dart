import 'package:bloc/bloc.dart';

import 'package:clean_architecture/app/modules/cep/domain/interfaces/domain/search_cep.dart';

import 'package:clean_architecture/app/modules/cep/presenter/blocs/cep/cep_event.dart';
import 'package:clean_architecture/app/modules/cep/presenter/blocs/cep/cep_state.dart';

class CepBloc extends Bloc<CepEvent, CepState> {
  final SearchCep searchCep;

  CepBloc(
    this.searchCep,
  ) : super(const SCInit()) {
    on<ECSeachCep>(seachCep);
    on<ECReset>(resetCep);
  }

  void seachCep(event, emit) async {
    emit(const SCLoading());

    try {
      final result = await searchCep.seachCep(event.cep);
      await Future.delayed(const Duration(seconds: 1));
      emit(
        SCSuccess(cep: result),
      );
    } catch (e) {
      await Future.delayed(const Duration(seconds: 3));
      emit(
        const SCFailure(message: 'Error'),
      );
    }
  }

  void resetCep(event, emit) async {
    emit(
      const SCInit(),
    );
  }
}
