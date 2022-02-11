import '../errors/cep_failure.dart';
import 'cep.dart';

class ResponseCep {
  final Cep? right;
  final CepFailure? left;

  ResponseCep({this.right, this.left});
}
