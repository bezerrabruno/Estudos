import '../../../domain/entities/cep.dart';

class CepState {
  const CepState();
}

// 1° sigla = S == State
// 2° sigla = className
// State

class SCInit extends CepState {
  const SCInit();
}

class SCLoading extends CepState {
  const SCLoading();
}

class SCSuccess extends CepState {
  final Cep cep;

  const SCSuccess({required this.cep});
}

class SCFailure extends CepState {
  final String message;

  const SCFailure({required this.message});
}
