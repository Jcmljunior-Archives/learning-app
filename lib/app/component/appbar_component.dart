import 'package:flutter/material.dart';

import '../bootstrap.dart';
import '../model/palette_model.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  Icon getBrightnessIcon(BuildContext context) {
    return context
                .findAncestorStateOfType<BootstrapState>()
                ?.getUseLightMode() ==
            true
        ? const Icon(Icons.wb_sunny_outlined)
        : const Icon(Icons.wb_sunny);
  }

  Icon getPaletteIcon(BuildContext context, int index) {
    return context
                .findAncestorStateOfType<BootstrapState>()
                ?.getColorSelected() ==
            index
        ? Icon(
            Icons.color_lens,
            color: PaletteModel.colorItems.elementAt(index),
          )
        : Icon(
            Icons.color_lens_outlined,
            color: PaletteModel.colorItems.elementAt(index),
          );
  }

  PreferredSizeWidget createAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Logo'),
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      actions: <Widget>[
        IconButton(
          onPressed: () {
            context
                .findAncestorStateOfType<BootstrapState>()
                ?.handleBrightnessChange();
          },
          icon: getBrightnessIcon(context),
        ),
        PopupMenuButton(
          position: PopupMenuPosition.under,
          icon: const Icon(Icons.more_vert),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          itemBuilder: (context) {
            return List.generate(PaletteModel.colorItems.length, (index) {
              return PopupMenuItem(
                value: index,
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: getPaletteIcon(context, index),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(PaletteModel.colorLabels.elementAt(index)),
                    ),
                  ],
                ),
              );
            });
          },
          onSelected: context
              .findAncestorStateOfType<BootstrapState>()
              ?.handleColorSelect,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return createAppBar(context);
  }
}
