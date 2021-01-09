import 'package:exchange_currency/app/modules/currency/models/quote.dart';
import 'package:exchange_currency/app/modules/currency/models/referencie.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class ICurrencyRepository implements Disposable {
  Future<Quote> live();
  Future<Referencie> list();
}
