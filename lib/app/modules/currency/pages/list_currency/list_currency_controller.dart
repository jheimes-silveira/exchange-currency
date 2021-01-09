import 'package:exchange_currency/app/modules/currency/models/referencie.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'list_currency_controller.g.dart';

@Injectable()
class ListCurrencyController = _ListCurrencyControllerBase
    with _$ListCurrencyController;

abstract class _ListCurrencyControllerBase with Store {
  @observable
  Referencie referencie;

  _ListCurrencyControllerBase(@Data this.referencie);
}
