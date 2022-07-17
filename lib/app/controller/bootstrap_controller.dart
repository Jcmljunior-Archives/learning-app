import '../model/bootstrap_model.dart';

class BootstrapController {
  static final BootstrapController _controller =
      BootstrapController._internal();

  factory BootstrapController() => _controller;

  BootstrapController._internal();

  BootstrapModel splashScreenModel =
      BootstrapModel(useMaterial3: true, useLightMode: true, colorSelected: 0);
}
