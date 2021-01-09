import 'package:exchange_currency/app/modules/currency/models/quote.dart';
import 'package:exchange_currency/app/modules/currency/models/referencie.dart';
import 'package:exchange_currency/app/modules/currency/repositories/interfaces/currency_repository_interface.dart';
import 'package:exchange_currency/app/shared/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'currency_controller.g.dart';

@Injectable()
class CurrencyController = _CurrencyControllerBase
    with _$CurrencyController;

abstract class _CurrencyControllerBase with Store {
  final ICurrencyRepository exchangeCurrencyRepository;

  final inputController = TextEditingController(text: "1");

  @observable
  bool loading = false;

  @observable
  double resultValue;

  @observable
  String toCurrencySelectedInitials;

  @observable
  double toCurrencySelectedValue;

  @observable
  String messageError;

  @observable
  Quote quote;

  @observable
  Referencie referencie;

  _CurrencyControllerBase(this.exchangeCurrencyRepository) {
    find();
  }

  @action
  find() async {
    try {
      loading = true;
      quote = await exchangeCurrencyRepository.live();
      referencie = await exchangeCurrencyRepository.list();

      messageError = null;
      var item = quote.quotes.entries
          .toList()
          .where((element) => element.key == "USDBRL")
          .first;

      updateSelectedCurrencies(item.key, item.value);
    } catch (e) {
      messageError = e.error;
    } finally {
      loading = false;
    }
  }

  @action
  updateSelectedCurrencies(String initial, double value) {
    toCurrencySelectedInitials = initial;
    toCurrencySelectedValue = value;

    updateSelectedValues(inputController.text);
  }

  @action
  updateSelectedValues(String value) {
    try {
      double inputValue = double.parse(value);
      resultValue = inputValue * toCurrencySelectedValue;
    } catch (e) {
      resultValue = 0;
    }
  }

  @action
  goToListCurrency() async {
    final result = await Routes.listCurrency(referencie);

    if (result is String) {
      var item = quote.quotes.entries
          .toList()
          .where((element) => element.key == "USD$result")
          .first;

      updateSelectedCurrencies(item.key, item.value);
    }
  }
}
