import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'list_currency_controller.dart';

class ListCurrencyPage extends StatefulWidget {
  @override
  _ListCurrencyPageState createState() => _ListCurrencyPageState();
}

class _ListCurrencyPageState
    extends ModularState<ListCurrencyPage, ListCurrencyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selected Currency"),
      ),
      body: Observer(
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: controller.referencie?.currencies?.entries
                  ?.map(
                    (e) => _buildItemListTile(e),
                  )
                  ?.toList(),
            ),
          );
        },
      ),
    );
  }

  ListTile _buildItemListTile(MapEntry entry) {
    return ListTile(
      title: Text(
        "${entry.key} - ${entry.value}",
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
      ),
      onTap: () {
        Modular.to.pop(entry.key);
      },
    );
  }
}
