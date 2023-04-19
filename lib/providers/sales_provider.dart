import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:giftify/models/sales_data_model.dart';
import 'package:giftify/repositories/sales_repository.dart';
// import 'package:dice_agent_app/repositories/news_repository.dart' as userRepo;

final fetchSalesDataProvider = StateProvider<List<SalesDataModel>>((ref) {
  List<SalesDataModel> sales = [];
  return sales;
});

fetchSalesDataController(WidgetRef ref) {
  SalesRepository().fetchSalesData().then((value) {
    ref.read(fetchSalesDataProvider.notifier).state = value!;
    print("The sales model is ${ref.watch(fetchSalesDataProvider).length}");
  });
}
