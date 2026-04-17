import '../repositories/repositories.dart';

class {{feature_name.pascalCase()}}UseCase {
  final I{{feature_name.pascalCase()}}Repository _repository;

  {{feature_name.pascalCase()}}UseCase(this._repository);

  Future<void> call() async {
    return await _repository.function();
  }
}