
import 'package:exchange_currency/app/modules/currency/models/referencie.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Routes {
  static final String pathListCurrency = '/list';

  static  listCurrency(
    Referencie referencie,
  ) {
    return Modular.to.pushNamed(
      pathListCurrency,
      arguments: referencie,
    );
  }
}
