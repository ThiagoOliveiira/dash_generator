import 'package:flutter/material.dart';

import '../tokens/tokens.dart'; // Garanta que este import aponte para seus tokens

/// 1. Definição das classes de dados do Design System
class DSColors {
  final Color primary, onPrimary;
  final Color secondary, onSecondary;
  final Color background, onBackground;
  final Color surface, onSurface, surfaceVariant;
  final Color error, onError;
  final Color success, onSuccess;
  final Color outline;

  DSColors({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.error,
    required this.onError,
    required this.success,
    required this.onSuccess,
    required this.outline,
  });
}

class DSTypography {
  final TextStyle display, h1, h2, bodyLarge, bodySmall, labelBold;

  DSTypography({required this.display, required this.h1, required this.h2, required this.bodyLarge, required this.bodySmall, required this.labelBold});
}

class DSSpacing {
  final double xs, sm, md, lg, xl;
  DSSpacing({required this.xs, required this.sm, required this.md, required this.lg, required this.xl});
}

/// 2. Classe principal que agrupa os dados do DS
class DSData {
  final DSColors colors;
  final DSTypography typography;
  final DSSpacing spacing;

  DSData({required this.colors, required this.typography, required this.spacing});

  // --- FÁBRICA LIGHT ---
  factory DSData.light() {
    const textColor = AppColorsTokens.grey900;
    return DSData(
      colors: DSColors(
        primary: AppColorsTokens.primaryLight,
        onPrimary: AppColorsTokens.onPrimaryLight,
        secondary: AppColorsTokens.secondaryLight,
        onSecondary: AppColorsTokens.onSecondaryLight,
        background: AppColorsTokens.backgroundLight,
        onBackground: AppColorsTokens.onBackgroundLight,
        surface: AppColorsTokens.surfaceLight,
        onSurface: AppColorsTokens.onSurfaceLight,
        surfaceVariant: AppColorsTokens.surfaceVariantLight,
        error: AppColorsTokens.red,
        onError: AppColorsTokens.white,
        success: AppColorsTokens.green,
        onSuccess: AppColorsTokens.white,
        outline: AppColorsTokens.grey200,
      ),
      typography: _buildTypography(textColor),
      spacing: _buildSpacing(),
    );
  }

  // --- FÁBRICA DARK ---
  factory DSData.dark() {
    const textColor = AppColorsTokens.white;
    return DSData(
      colors: DSColors(
        primary: const Color(0xFF4C9AFF),
        onPrimary: AppColorsTokens.black,
        secondary: AppColorsTokens.grey600,
        onSecondary: AppColorsTokens.white,
        background: const Color(0xFF121212),
        onBackground: AppColorsTokens.white,
        surface: const Color(0xFF1E1E1E),
        onSurface: AppColorsTokens.white,
        surfaceVariant: const Color(0xFF2C2C2C),
        error: const Color(0xFFFF8F73),
        onError: AppColorsTokens.black,
        success: const Color(0xFF79F2C0),
        onSuccess: AppColorsTokens.black,
        outline: const Color(0xFF3C3C3C),
      ),
      typography: _buildTypography(textColor),
      spacing: _buildSpacing(),
    );
  }

  // Métodos privados para evitar repetição
  static DSTypography _buildTypography(Color color) => DSTypography(
    display: AppTypographyTokens.display.copyWith(color: color),
    h1: AppTypographyTokens.h1.copyWith(color: color),
    h2: AppTypographyTokens.h2.copyWith(color: color),
    bodyLarge: AppTypographyTokens.bodyLarge.copyWith(color: color),
    bodySmall: AppTypographyTokens.bodySmall.copyWith(color: color.withOpacity(0.7)),
    labelBold: AppTypographyTokens.labelBold.copyWith(color: color),
  );

  static DSSpacing _buildSpacing() => DSSpacing(xs: AppSpacingTokens.xs, sm: AppSpacingTokens.sm, md: AppSpacingTokens.md, lg: AppSpacingTokens.lg, xl: AppSpacingTokens.xl);
}
