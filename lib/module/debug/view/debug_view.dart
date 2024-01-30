import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:belajar_slicing/core.dart';

import '../controller/debug_controller.dart';

class DebugView extends StatefulWidget {
  final BuildContext context;
  final bool visible;
  final Widget? child;

  DebugView({
    Key? key,
    required this.context,
    required this.visible,
    this.child,
  }) : super(key: key);

  Widget build(context, DebugController controller) {
    controller.view = this;
    if (controller.loading)
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );

    if (child == null) return Container();
    if (!visible) return Container();
    if (!kDebugMode) return Container();

    return Material(
      child: Stack(
        children: [],
      ),
    );
  }

  @override
  State<DebugView> createState() => DebugController();
}
