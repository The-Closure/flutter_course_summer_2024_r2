import 'package:get/get.dart';
import 'package:graphql_getx_and_etc/model/cat_model.dart';
import 'package:graphql_getx_and_etc/model/handling_model.dart';

class CatController extends GetxController {
  Rx<ResultModel> result = ResultModel().obs;

  getCat() async {
    var response =
        await GetConnect().get("https://freetestapi.com/api/v1/cats/1");
    if (response.isOk) {
      result.value = CatModel.fromMap(response.body);
    } else {
      result.value = ErrorModel();
      Get.snackbar("alert", "Please Check your connection");
    }
  }
}
