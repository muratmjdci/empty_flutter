import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget.dialog({super.key}) : loaderType = LoaderType.dialog;
  const LoaderWidget.widget({super.key}) : loaderType = LoaderType.widget;

  final LoaderType loaderType;
  @override
  Widget build(BuildContext context) {
    final isWidget = loaderType == LoaderType.widget;

    if (isWidget) {
      return const Center(child: CircularProgressIndicator.adaptive());
    } else {
      return WillPopScope(
          onWillPop: () => Future.value(false),
          child: const Center(child: CircularProgressIndicator.adaptive()));
    }
  }
}

enum LoaderType { widget, dialog }
