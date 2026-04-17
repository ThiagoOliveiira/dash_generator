{{#use_bloc}}part of '{{feature_name.snakeCase()}}_bloc.dart';{{/use_bloc}}
{{#use_cubit}}part of '{{feature_name.snakeCase()}}_cubit.dart';{{/use_cubit}}

abstract class {{feature_name.pascalCase()}}State extends Equatable {
  const {{feature_name.pascalCase()}}State();

  @override
  List<Object?> get props => [];
}

class {{feature_name.pascalCase()}}Initial extends {{feature_name.pascalCase()}}State {}

class {{feature_name.pascalCase()}}Loading extends {{feature_name.pascalCase()}}State {}

class {{feature_name.pascalCase()}}Success extends {{feature_name.pascalCase()}}State {}

class {{feature_name.pascalCase()}}Failure extends {{feature_name.pascalCase()}}State {
  final String message;
  const {{feature_name.pascalCase()}}Failure(this.message);

  @override
  List<Object?> get props => [message];
}