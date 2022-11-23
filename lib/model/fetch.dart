import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;

Future<List<WatchList>> fetchWatchList() async {
  var url =
      Uri.parse('https://tugas3-pankgeming.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<WatchList> listWatchList = [];
  for (var d in data) {
    if (d != null) {
      listWatchList.add(WatchList.fromJson(d));
    }
  }

  return listWatchList;
}