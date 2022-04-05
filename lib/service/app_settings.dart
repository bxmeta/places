
import 'package:flutter/material.dart';

/// Хранилище настроек (временно, до прохождения стейт менеджеров)
abstract class AppSettings {
  /// настройки темы
  static ValueNotifier<bool> themeIsLight = ValueNotifier(true);
}
