abstract interface class QueryBuilder {
  /// Adds a filter to the query.
  QueryBuilder where(Filter filter);

  /// Sorts the query by a field.
  QueryBuilder orderBy(String field, {bool descending = false});

  /// Limits the number of returned records.
  QueryBuilder limit(int count);

  /// Skips the specified number of records.
  QueryBuilder offset(int count);

  /// Executes the query.
  Future<List<Map<String, dynamic>>> get();
}
