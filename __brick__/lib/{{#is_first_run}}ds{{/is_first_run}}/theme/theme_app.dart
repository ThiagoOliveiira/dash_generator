import 'package:flutter/material.dart';

import 'ds_objects.dart';

// O segredo está aqui: A EXTENSION precisa ser pública e estar no mesmo barrel que o DS
// Garante que este bloco existe no teu arquivo de tema:
extension DSContext on BuildContext {
  DSData get ds {
    final theme = Theme.of(this).extension<DSThemeExtension>();
    if (theme == null) throw Exception('DSThemeExtension não configurada no Theme!');
    return theme.ds;
  }
}

class DSThemeExtension extends ThemeExtension<DSThemeExtension> {
  final DSData ds;
  DSThemeExtension({required this.ds});

  @override
  DSThemeExtension copyWith({DSData? ds}) => DSThemeExtension(ds: ds ?? this.ds);

  @override
  DSThemeExtension lerp(ThemeExtension<DSThemeExtension>? other, double t) => this;
}
