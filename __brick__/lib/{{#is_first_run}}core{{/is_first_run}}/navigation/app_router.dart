import 'package:go_router/go_router.dart';
// Import da feature inicial (Ex: Home)
import '../../features/{{feature_name.snakeCase()}}/{{feature_name.snakeCase()}}.dart';

final appRouter = GoRouter(
  initialLocation: {{feature_name.pascalCase()}}Page.routePath,
  routes: [
    // REGISTRO_DE_ROTAS_AQUI
    {{feature_name.pascalCase()}}Routes.route,
    
  ],
);