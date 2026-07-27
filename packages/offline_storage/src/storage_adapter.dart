import 'query/query_builder.dart';

abstract interface class StorageAdapter {
  /// Initializes the storage engine.
  Future<void> initialize();

  /// Saves a serialized record.
  Future<void> save({
    required String collection,
    required String key,
    required Map<String, dynamic> data,
  });

  /// Finds a serialized record by its key.
  Future<Map<String, dynamic>?> findByKey({
    required String collection,
    required String key,
  });

  /// Deletes a serialized record.
  Future<void> delete({required String collection, required String key});

  /// Returns whether a record exists.
  Future<bool> exists({required String collection, required String key});

  QueryBuilder query(String collection);

  /// Releases any resources held by the storage engine.
  Future<void> close();
}
