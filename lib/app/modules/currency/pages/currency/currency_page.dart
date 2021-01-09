import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'currency_controller.dart';

class CurrencyPage extends StatefulWidget {
  @override
  _CurrencyPageState createState() => _CurrencyPageState();
}

class _CurrencyPageState
    extends ModularState<CurrencyPage, CurrencyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Observer(
        builder: (_) {
          if (controller.loading) {
            return Center(child: CircularProgressIndicator());
          }

          if (controller.messageError != null) {
            return _buildMessageError(controller.messageError);
          }

          return Padding(
            padding: const EdgeInsets.only(
              top: 16,
              right: 16,
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitleInput(),
                _buildInputCurrencyAndChancheToCurrency(),
                _buildResult(),
              ],
            ),
          );
        },
      ),
    );
  }

  Center _buildMessageError(String message) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Oppss...",
            style: Theme.of(context).textTheme.headline4,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text(
              message,
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButton(
            child: Text("Try again"),
            onPressed: () {
              controller.find();
            },
          )
        ],
      ),
    );
  }

  Widget _buildInputCurrencyAndChancheToCurrency() {
    return Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: SizedBox(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller.inputController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    prefix: Text("${controller.quote?.source ?? ''}")),
                onChanged: (text) {
                  controller.updateSelectedValues(text);
                },
              ),
            ),
            SizedBox(width: 16),
            GestureDetector(
              onTap: () {
                controller.goToListCurrency();
              },
              child: Chip(
                label: Observer(
                  builder: (_) {
                    return Text(
                        controller.toCurrencySelectedInitials.substring(3, 6) ??
                            "");
                  },
                ),
                padding: EdgeInsets.all(16.0),
              ),
            )
          ],
        ),
        height: 50,
      ),
    );
  }

  Widget _buildResult() {
    return Expanded(
      child: Center(
        child: Observer(
          builder: (_) {
            return Observer(
              builder: (_) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${controller.quote.source} ${controller.inputController.text}\n =",
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "${controller.toCurrencySelectedInitials.substring(3, 6)} ${controller.resultValue.toStringAsFixed(2)}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text(' currency'),
    );
  }

  Widget _buildTitleInput() {
    return Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: Text(
        "Amount",
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
