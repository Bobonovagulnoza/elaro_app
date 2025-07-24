import 'dart:async';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkService {
  static final NetworkService _instance = NetworkService._internal();
  factory NetworkService() => _instance;
  NetworkService._internal();

  late final StreamSubscription<InternetConnectionStatus> _subscription;

  static Future<bool> hasConnection() async {
    final checker = InternetConnectionChecker.createInstance(
      checkInterval: Duration(seconds: 1),
    );
    bool connection = await checker.hasConnection;
    print("Tarmoq holati (hasConnection): $connection");
    return connection;
  }

  void dispose() {
    _subscription.cancel();
  }
}
