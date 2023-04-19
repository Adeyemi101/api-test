import 'dart:convert';
import 'package:giftify/models/sales_data_model.dart';
import 'package:http/http.dart' as http;

class SalesRepository {
  Future<List<SalesDataModel>?> fetchSalesData() async {
    String url =
        'https://g54qw205uk.execute-api.eu-west-1.amazonaws.com/DEV/stub';
    final data = {"angular_test": "angular-developer"};
    final response = await http.Client().post(
      Uri.parse(url),
      body: json.encode(data),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    );
    List<SalesDataModel> salesDataModelList = [];
    print(response.statusCode);
    // print(response.body);

    try {
      if (response.statusCode == 200) {
        List salesData = json.decode(response.body);
        salesDataModelList =
            salesData.map((order) => SalesDataModel.fromJson(order)).toList();
        return salesDataModelList;
      } else {
        // ignore: use_build_context_synchronously
        return salesDataModelList;
      }
    } catch (e) {
      // ignore: use_build_context_synchronously

    }
    return salesDataModelList;
  }
}
