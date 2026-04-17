{{#is_full_clean}}
import '../../domain/domain.dart';
{{/is_full_clean}}

import '../datasources/{{feature_name.snakeCase()}}_datasource.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements I{{feature_name.pascalCase()}}Repository {
  final {{feature_name.pascalCase()}}DataSource _dataSource;

  {{feature_name.pascalCase()}}RepositoryImpl(this._dataSource);

  @override
  Future<void> function() async {
    try {
      return await _dataSource.function();
    } catch (e) {
      // Aqui tratas erros específicos da camada de dados (ex: No Internet)
      rethrow;
    }
  }
}