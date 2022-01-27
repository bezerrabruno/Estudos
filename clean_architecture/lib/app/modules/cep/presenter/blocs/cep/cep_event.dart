class CepEvent {
  const CepEvent();
}

// 1° sigla = E == Event
// 2° sigla = className
// Event

class ECSeachCep extends CepEvent {
  final String cep;

  const ECSeachCep(this.cep);
}

class ECReset extends CepEvent {
  const ECReset();
}
