import 'package:mason/mason.dart';

void run(HookContext context) {
  // 1. Banner de Boas-vindas e Legenda
  context.logger.info(
    lightCyan.wrap(
      '''
┌───────────────────────────────────────────────────────────┐
│       🎯 DASH GENERATOR - FLUTTER ARCHITECTURE            │
├───────────────────────────────────────────────────────────┤
│                                                           │
│  Bem-vindo ao gerador oficial do seu Design System!       │
│  Este brick automatiza a criação de features seguindo     │
│  Clean Architecture e os padrões do seu projeto.          │
│                                                           │
└───────────────────────────────────────────────────────────┘
''',
    ),
  );

  // 2. Execução dos Prompts Manuais (Ordem lógica)

  final isFirstRun = context.logger.confirm(
    '🚀 É a primeira execução? (Irá gerar a base core/ds)',
    defaultValue: false,
  );

  final name = context.logger.prompt(
    '📦 Qual o nome da funcionalidade?',
    defaultValue: 'home',
  );

  if (name.trim().isEmpty) {
    context.logger.err('❌ O nome da funcionalidade não pode estar vazio!');
    throw Exception('Feature name is required');
  }

  // 1. Banner de Boas-vindas e Legenda
  context.logger.info(
    lightCyan.wrap(
      '''
┌───────────────────────────────────────────────────────────┐
│                 🚀 GUIA DE ARQUITETURA                    │
├───────────────────────────────────────────────────────────┤
│                                                           │
│ 🏗️  full_clean:                                            │
│    Gera a estrutura completa seguindo Clean Architecture. │
│    Inclui: DataSources, Repositories, UseCases, Entities, │
│    Bloc/Cubit e a UI (Page/View).                         │
│    Ideal para: Regras de negócio complexas e APIs.        │
│                                                           │
│ 🎨 ui_only:                                               │
│    Gera apenas a camada de apresentação.                  │
│    Inclui: Bloc/Cubit e a UI (Page/View).                 │
│    Ideal para: Telas estáticas ou fluxos simples.         │
│                                                           │
└───────────────────────────────────────────────────────────┘
''',
    ),
  );

  final featureType = context.logger.chooseOne(
    '🏗️  Selecione o tipo de arquitetura:',
    choices: ['full_clean', 'ui_only'],
    defaultValue: 'full_clean',
  );

  final stateManagement = context.logger.chooseOne(
    '🧠 Qual gerenciador de estado deseja utilizar?',
    choices: ['bloc', 'cubit'],
    defaultValue: 'bloc',
  );

  // 3. Mapeamento das variáveis para os templates (.dart)
  context.vars = {
    ...context.vars,
    'feature_name': name.snakeCase,
    'is_first_run': isFirstRun,
    'feature_type': featureType,
    'state_management': stateManagement,
    // Bools para facilitar o uso de {{#is_full_clean}} nos arquivos
    'is_full_clean': featureType == 'full_clean',
    'is_ui_only': featureType == 'ui_only',
    'use_bloc': stateManagement == 'bloc',
    'use_cubit': stateManagement == 'cubit',
  };
}
