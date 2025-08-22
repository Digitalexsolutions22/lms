import 'package:flutter/widgets.dart';
import 'package:lms/features/bookmange/model/categorimode.dart';
import 'package:lms/helper/networkhelper.dart';

class Bookprovider with ChangeNotifier {
  bool loading = false;

  isloading(bool load) {
    loading = load;
    notifyListeners();
  }

  List<Categorimodel> categories = [];

  getcategiries() {
    isloading(true);
    Networkhelper()
        .getapi("get.php")
        .then((res) {
          isloading(false);

          List data = res["data"];

          categories =
              data.map((data) => Categorimodel.fromJson(data)).toList();
        })
        .whenComplete(() => isloading(false));
  }

  // void searchBooks(String query) {
  //   if (query.isEmpty) {
  //     _searchList = _allBooks;
  //   } else {
  //     _searchList = _allBooks.where((book) {
  //       final nameMatch =
  //           book.bookName.toLowerCase().contains(query.toLowerCase());
  //       final categoryMatch =
  //           book.categoryName.toLowerCase().contains(query.toLowerCase());
  //       return nameMatch || categoryMatch;
  //     }).toList();
  //   }
  //   notifyListeners();
  // }

  // List<Categorimodel> scienceBooks =
  //   books.where((book) => book.categoryName == "Science").toList();
}
