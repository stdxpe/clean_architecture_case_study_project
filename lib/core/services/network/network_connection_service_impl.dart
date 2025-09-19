import 'package:case_study_clean_architecture_project/core/services/network/network_connection_service.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

/// Concrete implementation of [NetworkConnectionService] using [InternetConnection].
/// Provides internet connectivity stream and single-time validation check.

class NetworkConnectionServiceImpl implements NetworkConnectionService {
  NetworkConnectionServiceImpl(this._connection);

  final InternetConnection _connection;

  @override
  Stream<bool> get isConnected => _connection.onStatusChange.map(
    (status) => status == InternetStatus.connected,
  );

  @override
  Future<bool> validateCurrentConnection() => _connection.hasInternetAccess;
}
