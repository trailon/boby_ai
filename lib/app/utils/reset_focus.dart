import 'package:flutter/material.dart';

class ResetFocus {
  void initFocus() {
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
  }
}
