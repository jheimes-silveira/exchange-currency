// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CurrencyController = BindInject(
  (i) => CurrencyController(i<ICurrencyRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CurrencyController on _CurrencyControllerBase, Store {
  final _$loadingAtom = Atom(name: '_CurrencyControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$resultValueAtom = Atom(name: '_CurrencyControllerBase.resultValue');

  @override
  double get resultValue {
    _$resultValueAtom.reportRead();
    return super.resultValue;
  }

  @override
  set resultValue(double value) {
    _$resultValueAtom.reportWrite(value, super.resultValue, () {
      super.resultValue = value;
    });
  }

  final _$toCurrencySelectedInitialsAtom =
      Atom(name: '_CurrencyControllerBase.toCurrencySelectedInitials');

  @override
  String get toCurrencySelectedInitials {
    _$toCurrencySelectedInitialsAtom.reportRead();
    return super.toCurrencySelectedInitials;
  }

  @override
  set toCurrencySelectedInitials(String value) {
    _$toCurrencySelectedInitialsAtom
        .reportWrite(value, super.toCurrencySelectedInitials, () {
      super.toCurrencySelectedInitials = value;
    });
  }

  final _$toCurrencySelectedValueAtom =
      Atom(name: '_CurrencyControllerBase.toCurrencySelectedValue');

  @override
  double get toCurrencySelectedValue {
    _$toCurrencySelectedValueAtom.reportRead();
    return super.toCurrencySelectedValue;
  }

  @override
  set toCurrencySelectedValue(double value) {
    _$toCurrencySelectedValueAtom
        .reportWrite(value, super.toCurrencySelectedValue, () {
      super.toCurrencySelectedValue = value;
    });
  }

  final _$messageErrorAtom = Atom(name: '_CurrencyControllerBase.messageError');

  @override
  String get messageError {
    _$messageErrorAtom.reportRead();
    return super.messageError;
  }

  @override
  set messageError(String value) {
    _$messageErrorAtom.reportWrite(value, super.messageError, () {
      super.messageError = value;
    });
  }

  final _$quoteAtom = Atom(name: '_CurrencyControllerBase.quote');

  @override
  Quote get quote {
    _$quoteAtom.reportRead();
    return super.quote;
  }

  @override
  set quote(Quote value) {
    _$quoteAtom.reportWrite(value, super.quote, () {
      super.quote = value;
    });
  }

  final _$referencieAtom = Atom(name: '_CurrencyControllerBase.referencie');

  @override
  Referencie get referencie {
    _$referencieAtom.reportRead();
    return super.referencie;
  }

  @override
  set referencie(Referencie value) {
    _$referencieAtom.reportWrite(value, super.referencie, () {
      super.referencie = value;
    });
  }

  final _$findAsyncAction = AsyncAction('_CurrencyControllerBase.find');

  @override
  Future find() {
    return _$findAsyncAction.run(() => super.find());
  }

  final _$goToListCurrencyAsyncAction =
      AsyncAction('_CurrencyControllerBase.goToListCurrency');

  @override
  Future goToListCurrency() {
    return _$goToListCurrencyAsyncAction.run(() => super.goToListCurrency());
  }

  final _$_CurrencyControllerBaseActionController =
      ActionController(name: '_CurrencyControllerBase');

  @override
  dynamic updateSelectedCurrencies(String initial, double value) {
    final _$actionInfo = _$_CurrencyControllerBaseActionController.startAction(
        name: '_CurrencyControllerBase.updateSelectedCurrencies');
    try {
      return super.updateSelectedCurrencies(initial, value);
    } finally {
      _$_CurrencyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateSelectedValues(String value) {
    final _$actionInfo = _$_CurrencyControllerBaseActionController.startAction(
        name: '_CurrencyControllerBase.updateSelectedValues');
    try {
      return super.updateSelectedValues(value);
    } finally {
      _$_CurrencyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
resultValue: ${resultValue},
toCurrencySelectedInitials: ${toCurrencySelectedInitials},
toCurrencySelectedValue: ${toCurrencySelectedValue},
messageError: ${messageError},
quote: ${quote},
referencie: ${referencie}
    ''';
  }
}
