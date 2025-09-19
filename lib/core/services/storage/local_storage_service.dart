/// Abstract interface for [LocalStorageService]

abstract class LocalStorageService {
  Future<void> write<T>({required String key, required T value});
  Future<T?> read<T>({required String key});
  Future<void> delete(String key);
  Future<void> clear();
  Future<bool> containsKey(String key);
}
