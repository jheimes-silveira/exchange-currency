import 'package:exchange_currency/app/modules/currency/pages/list_currency/list_currency_page.dart';
import 'package:exchange_currency/app/shared/routes.dart';

import 'pages/list_currency/list_currency_controller.dart';
import 'package:exchange_currency/app/network/http_client/http_client.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pages/currency/currency_controller.dart';
import 'pages/currency/currency_page.dart';
import 'repositories/currency_repository.dart';

class CurrencyModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HttpClient,
        $CurrencyRepository,
        $CurrencyController,
        $ListCurrencyController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => CurrencyPage(),
        ),
        ModularRouter(
          Routes.pathListCurrency,
          child: (_, args) => ListCurrencyPage(),
        ),
      ];

  static Inject get to => Inject<CurrencyModule>.of();
}
