import 'package:belajar_slicing/module/points/models/kelas_siswa.dart';
import 'package:get/get.dart';
import '../view/points_view.dart';
import 'package:http/http.dart' as http;

class PointsController extends GetxController {
  PointsView? view;
  late KelasSiswa kelasSiswa;

  getKelasSiswa() async {
    var response = await http.get(
      Uri.parse("https://sidemit.sumenepsmansa.sch.id/api/kelasSiswa"),
      headers: {
        "Content-Type": "application/json",
        "Authorization":
            "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjE1YTllNzNmMjgxOWFiOTI5YTNmNWRhYmM3YmI0YWRhMDgwMTI4ZDcyNWZlN2NiYTIzNWM1ZTAxYWYxZDY0YjUxNDhmNTM2ZGZjOTlmMWE3In0.eyJhdWQiOiIzIiwianRpIjoiMTVhOWU3M2YyODE5YWI5MjlhM2Y1ZGFiYzdiYjRhZGEwODAxMjhkNzI1ZmU3Y2JhMjM1YzVlMDFhZjFkNjRiNTE0OGY1MzZkZmM5OWYxYTciLCJpYXQiOjE3MDY2Mjk2MjQsIm5iZiI6MTcwNjYyOTYyNCwiZXhwIjoxNzM4MjUyMDI0LCJzdWIiOiIxMTAxIiwic2NvcGVzIjpbImFkbWluIl19.mzvPnRNw14z0mw3sQNUTCy4BNjmIb5v0xoi-vOljB8HNKjyLIPRNVT5qf_ZlNrTfXHvOEh4awNDVNfleTA6wazPz4kFJw72qcdq8rfy2ygG-1A-NZ-7u6Ivdj3z3lLL1-QDOeHcEzwvvjMt6qDZ8DIdvYHvY1NdR06IzMu_l5hUfH1oUMRGMRiHsVUzntf-PFEyBCpBycXTDFL-wfwlP0GsgTXN_XGzS3sYHspbFIMja6DSSfFPc9Us7NJIncGjPI9NpbsTId3fIP7Sg3ocOzFMo0DoDyaStCnBSHvLdddfM2phDQxZPHQVSI31Hd71dCa_h4WSjYUjyVZWiHJFF_w6RBzubbl3ZucCorto52qOvf4vcCPJma9KxPJcMr4UhpURTrdHODJVpV-ST-ow-aME37EuS5cv0YPK60C5wEZehMaidG5d-lhj6dOcQr9hj-DYa5Oc4vNiYQYZ2qqS4lMuwO3tnZv6uUKusB_XwzryLBicnYviQOB1Nw4K-Thqte2jiOX4O-4Q1df7vC6BiXzs25lswpRcEdrebTJ1BHOPHqk_AorakriTpR0HpHjGjpQWetVdiRSNKlPYXzau-4QVVdqx_BjMoXW8GQlXDnr4QFZ3fIx2Zod6dOQO71pwr72lm9kYx6qoicg_aFj_5fGZFbY9Nb62nLIpxCKhTpvo"
      },
    );
    if (response.statusCode == 200) {
      print("di akses ke internet");
      var ks = kelasSiswaFromJson(response.body);
    }
    // var response = await Dio().get(
    //   "https://sidemit.sumenepsmansa.sch.id/api/kelasSiswa",
    //   options: Options(
    //     headers: {
    //       "Content-Type": "application/json",
    //       "Authorization":
    //           "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjE1YTllNzNmMjgxOWFiOTI5YTNmNWRhYmM3YmI0YWRhMDgwMTI4ZDcyNWZlN2NiYTIzNWM1ZTAxYWYxZDY0YjUxNDhmNTM2ZGZjOTlmMWE3In0.eyJhdWQiOiIzIiwianRpIjoiMTVhOWU3M2YyODE5YWI5MjlhM2Y1ZGFiYzdiYjRhZGEwODAxMjhkNzI1ZmU3Y2JhMjM1YzVlMDFhZjFkNjRiNTE0OGY1MzZkZmM5OWYxYTciLCJpYXQiOjE3MDY2Mjk2MjQsIm5iZiI6MTcwNjYyOTYyNCwiZXhwIjoxNzM4MjUyMDI0LCJzdWIiOiIxMTAxIiwic2NvcGVzIjpbImFkbWluIl19.mzvPnRNw14z0mw3sQNUTCy4BNjmIb5v0xoi-vOljB8HNKjyLIPRNVT5qf_ZlNrTfXHvOEh4awNDVNfleTA6wazPz4kFJw72qcdq8rfy2ygG-1A-NZ-7u6Ivdj3z3lLL1-QDOeHcEzwvvjMt6qDZ8DIdvYHvY1NdR06IzMu_l5hUfH1oUMRGMRiHsVUzntf-PFEyBCpBycXTDFL-wfwlP0GsgTXN_XGzS3sYHspbFIMja6DSSfFPc9Us7NJIncGjPI9NpbsTId3fIP7Sg3ocOzFMo0DoDyaStCnBSHvLdddfM2phDQxZPHQVSI31Hd71dCa_h4WSjYUjyVZWiHJFF_w6RBzubbl3ZucCorto52qOvf4vcCPJma9KxPJcMr4UhpURTrdHODJVpV-ST-ow-aME37EuS5cv0YPK60C5wEZehMaidG5d-lhj6dOcQr9hj-DYa5Oc4vNiYQYZ2qqS4lMuwO3tnZv6uUKusB_XwzryLBicnYviQOB1Nw4K-Thqte2jiOX4O-4Q1df7vC6BiXzs25lswpRcEdrebTJ1BHOPHqk_AorakriTpR0HpHjGjpQWetVdiRSNKlPYXzau-4QVVdqx_BjMoXW8GQlXDnr4QFZ3fIx2Zod6dOQO71pwr72lm9kYx6qoicg_aFj_5fGZFbY9Nb62nLIpxCKhTpvo"
    //     },
    //   ),
    // );

    // List<dynamic> object = json.decode(response.data);
    // print(object);
  }
}
