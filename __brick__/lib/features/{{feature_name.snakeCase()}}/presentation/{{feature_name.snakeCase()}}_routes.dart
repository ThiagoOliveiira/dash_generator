
import 'package:go_router/go_router.dart';
import 'pages/{{feature_name.snakeCase()}}_page.dart';

abstract class {{feature_name.pascalCase()}}Routes {
  static GoRoute get route => GoRoute(
        path: {{feature_name.pascalCase()}}Page.routePath,
        name: {{feature_name.pascalCase()}}Page.routeName,
        builder: (context, state) => const {{feature_name.pascalCase()}}Page(),
      );
}