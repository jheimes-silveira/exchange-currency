import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:exchange_currency/app/modules/currency/models/quote.dart';
import 'package:exchange_currency/app/modules/currency/models/referencie.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'interfaces/currency_repository_interface.dart';

part 'currency_repository.g.dart';

@Injectable()
class CurrencyRepository implements ICurrencyRepository {
  final DioForNative client;
  final accessKey = "ab7e99571ab8448390dbc023b0a87912";

  CurrencyRepository(this.client);

  @override
  void dispose() {}

  @override
  Future<Referencie> list() async {
    Response response =
        await client.get("/list?access_key=$accessKey&format=0");
    return Referencie.fromJson(response.data);
  }

  @override
  Future<Quote> live() async {
    Response response =
        await client.get("/live?access_key=$accessKey&format=0");
    return Quote.fromJson(response.data);
  }
}
