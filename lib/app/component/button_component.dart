import 'package:flutter/material.dart';

import '../view/initial_view.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({super.key});

  @override
  FloatingActionButton build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.findAncestorStateOfType<InitialViewState>()?.increment();
      },
      child: const Icon(Icons.add),
    );
  }
}
