// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_currency_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ListCurrencyController = BindInject(
  (i) => ListCurrencyController(i.args.data),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListCurrencyController on _ListCurrencyControllerBase, Store {
  final _$referencieAtom = Atom(name: '_ListCurrencyControllerBase.referencie');

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

  @override
  String toString() {
    return '''
referencie: ${referencie}
    ''';
  }
}
