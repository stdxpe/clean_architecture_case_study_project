/// Abstract interface for [NetworkConnectionService]

abstract class NetworkConnectionService {
  Stream<bool> get isConnected; // Connection status Stream
  Future<bool> validateCurrentConnection(); // One-time connection check
}
