import 'dart:io';
import 'dart:json' as JSON;

main() {
  var port = int.parse(Platform.environment['PORT']);
  HttpServer.bind('0.0.0.0', port).then((HttpServer server) {
    print('Server started on port: ${port}');
    server.listen((HttpRequest request) {
      request.response..headers.set(HttpHeaders.CONTENT_TYPE, 'text/html')
        ..write("hello world")
        ..close();
    });
  });
}