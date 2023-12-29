import 'dart:io';
///本机起个服务
class LtuServer{

  Future<void> start({int port=8080}) async {
    final server = await createServer(port: port);
    await handleRequests(server);
  }

  Future<void> handleRequests(HttpServer server) async {
    await for (HttpRequest request in server) {
      request.response.write("哈哈哈");
      await request.response.close();
    }
  }

  Future<HttpServer> createServer({required int port}) async {
    final address = InternetAddress.loopbackIPv4;
    return await HttpServer.bind(address, port);
  }
}