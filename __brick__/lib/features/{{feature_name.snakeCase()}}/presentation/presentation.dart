{{#use_bloc}}
export './bloc/{{feature_name.snakeCase()}}_bloc.dart';
{{/use_bloc}}
{{#use_cubit}}
export './bloc/{{feature_name.snakeCase()}}_cubit.dart';
{{/use_cubit}}
export './pages/pages.dart';
export './widgets/widgets.dart';
export '{{feature_name.snakeCase()}}_routes.dart';
