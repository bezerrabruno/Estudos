import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';

class DioMock extends Mock implements Dio {
  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async =>
      super.noSuchMethod(Invocation.getter(#getCep),
          returnValue:
              Response<T>(requestOptions: RequestOptions(path: 'path')));
}
