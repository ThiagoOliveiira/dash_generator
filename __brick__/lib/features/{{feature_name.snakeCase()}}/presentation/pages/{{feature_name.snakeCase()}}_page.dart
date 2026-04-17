import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/di.dart'; 
import '../../../../ds/ds.dart';      
import '../presentation.dart';        

class {{feature_name.pascalCase()}}Page extends StatelessWidget {
  const {{feature_name.pascalCase()}}Page({super.key});

  static const routeName = '{{feature_name.snakeCase()}}';
  static const routePath = '/{{feature_name.snakeCase()}}';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      {{#use_bloc}}
      create: (context) => getIt<{{feature_name.pascalCase()}}Bloc>()..add({{feature_name.pascalCase()}}Started()),
      {{/use_bloc}}
      {{#use_cubit}}
      create: (context) => getIt<{{feature_name.pascalCase()}}Cubit>()..loadData(),
      {{/use_cubit}}
      child: const {{feature_name.pascalCase()}}View(),
    );
  }
}

class {{feature_name.pascalCase()}}View extends StatelessWidget {
  const {{feature_name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    final ds = context.ds;

    return Scaffold(
      backgroundColor: ds.colors.background,
      appBar: AppBar(
        title: Text(
          'DS Showcase ({{#use_bloc}}Bloc{{/use_bloc}}{{#use_cubit}}Cubit{{/use_cubit}})', 
          style: ds.typography.h2.copyWith(color: ds.colors.onSurface),
        ),
        backgroundColor: ds.colors.surface,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: ds.colors.outline, height: 1), // Uso do token Outline
        ),
      ),
      body: BlocBuilder<{{feature_name.pascalCase()}}{{#use_bloc}}Bloc{{/use_bloc}}{{#use_cubit}}Cubit{{/use_cubit}}, {{feature_name.pascalCase()}}State>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(ds.spacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _SectionTitle(title: 'ESTADO DO {{#use_bloc}}BLOC{{/use_bloc}}{{#use_cubit}}CUBIT{{/use_cubit}}'),
                _CardContainer(
                  child: Text(
                    'Estado atual: ${state.runtimeType}',
                    style: ds.typography.bodyLarge.copyWith(color: ds.colors.onSurface),
                  ),
                ),

                SizedBox(height: ds.spacing.lg),

                _SectionTitle(title: 'VARIATIONS & OUTLINE'),
                _CardContainer(
                  color: ds.colors.surfaceVariant, // Uso do SurfaceVariant
                  child: Text(
                    'Este card usa SurfaceVariant e bordas Outline',
                    style: ds.typography.bodySmall.copyWith(color: ds.colors.onSurface),
                  ),
                ),

                SizedBox(height: ds.spacing.lg),

                _SectionTitle(title: 'CORES DE MARCA & CONTRASTE'),
                Wrap(
                  spacing: ds.spacing.sm,
                  runSpacing: ds.spacing.sm,
                  children: [
                    _ColorBox(color: ds.colors.primary, onColor: ds.colors.onPrimary, label: 'Primary'),
                    _ColorBox(color: ds.colors.secondary, onColor: ds.colors.onSecondary, label: 'Secondary'),
                    _ColorBox(color: ds.colors.success, onColor: ds.colors.onSuccess, label: 'Success'),
                    _ColorBox(color: ds.colors.error, onColor: ds.colors.onError, label: 'Error'),
                  ],
                ),

                SizedBox(height: ds.spacing.lg),

                _SectionTitle(title: 'ESPAÇAMENTOS (SPACING)'),
                _CardContainer(
                  child: Column(
                    children: [
                      _SpacingBar(width: ds.spacing.xs, label: 'XS: ${ds.spacing.xs}'),
                      _SpacingBar(width: ds.spacing.sm, label: 'SM: ${ds.spacing.sm}'),
                      _SpacingBar(width: ds.spacing.md, label: 'MD: ${ds.spacing.md}'),
                      _SpacingBar(width: ds.spacing.lg, label: 'LG: ${ds.spacing.lg}'),
                      _SpacingBar(width: ds.spacing.xl, label: 'XL: ${ds.spacing.xl}'),
                    ],
                  ),
                ),
                
                SizedBox(height: ds.spacing.xl),
              ],
            ),
          );
        },
      ),
    );
  }
}

// --- COMPONENTES AUXILIARES LOCAIS ATUALIZADOS ---

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.ds.spacing.xs),
      child: Text(
        title, 
        style: context.ds.typography.labelBold.copyWith(color: context.ds.colors.onBackground),
      ),
    );
  }
}

class _CardContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  const _CardContainer({required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    final ds = context.ds;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(ds.spacing.md),
      decoration: BoxDecoration(
        color: color ?? ds.colors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: ds.colors.outline), // Borda padrão agora usa Outline
      ),
      child: child,
    );
  }
}

class _ColorBox extends StatelessWidget {
  final Color color;
  final Color onColor;
  final String label;

  const _ColorBox({
    required this.color, 
    required this.onColor, 
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 85,
          height: 60,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: context.ds.colors.outline.withOpacity(0.2)),
          ),
          child: Center(
            child: Text(
              'Text', 
              style: context.ds.typography.bodySmall.copyWith(
                color: onColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 4),
        Text(label, style: context.ds.typography.bodySmall.copyWith(color: context.ds.colors.onBackground)),
      ],
    );
  }
}

class _SpacingBar extends StatelessWidget {
  final double width;
  final String label;

  const _SpacingBar({required this.width, required this.label});

  @override
  Widget build(BuildContext context) {
    final ds = context.ds;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            height: 12, 
            width: width * 2, 
            decoration: BoxDecoration(
              color: ds.colors.primary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(width: ds.spacing.sm),
          Text(label, style: ds.typography.bodySmall.copyWith(color: ds.colors.onSurface)),
        ],
      ),
    );
  }
}