import 'package:flutter/material.dart';
import 'package:learning_app/app/controller/bootstrap_controller.dart';

import 'view/splash_screen_view.dart';
import 'view/initial_view.dart';

class Bootstrap extends StatefulWidget {
  const Bootstrap({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BootstrapState();
}

class BootstrapState extends State<Bootstrap> {
  final BootstrapController _controller = BootstrapController();

  @override
  initState() {
    super.initState();
    updateTheme(
      _controller.splashScreenModel.colorSelected,
      _controller.splashScreenModel.useMaterial3,
      _controller.splashScreenModel.useLightMode,
    );
  }

  void updateTheme(int colorIndex, bool useMaterial3, bool useLightMode) {
    setState(() {
      _controller.splashScreenModel.themeData = _controller.splashScreenModel
          .updateTheme(colorIndex, useMaterial3, useLightMode);
    });
  }

  void handleBrightnessChange() {
    setState(() {
      _controller.splashScreenModel.handleBrightnessChange();
    });
  }

  void handleMaterialVersionChange() {
    setState(() {
      _controller.splashScreenModel.handleMaterialVersionChange();
    });
  }

  void handleColorSelect(int value) {
    setState(() {
      _controller.splashScreenModel.handleColorSelect(value);
    });
  }

  /*
   * Retorna as rotas da aplicação.
   */
  Map<String, WidgetBuilder> getAllRoutes() {
    return <String, WidgetBuilder>{
      '/': (BuildContext context) => const SplashScreenView(),
      '/initial': (BuildContext context) => const InitialView(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _controller.splashScreenModel.useLightMode
          ? ThemeMode.light
          : ThemeMode.dark,
      theme: _controller.splashScreenModel.themeData,
      initialRoute: '/',
      routes: getAllRoutes(),
    );
  }
}
