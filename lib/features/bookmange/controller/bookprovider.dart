import 'package:flutter/widgets.dart';

class Bookprovider with ChangeNotifier {
  bool loading = false;
  isloading(bool load) {
    loading = load;
  }
}
