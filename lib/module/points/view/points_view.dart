import 'package:belajar_slicing/module/points/models/kelas_siswa.dart';
import 'package:belajar_slicing/module/points/models/sub_tatibs.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:belajar_slicing/core.dart';
import 'package:get/get.dart';

class PointsView extends StatefulWidget {
  PointsView({Key? key}) : super(key: key);

  @override
  State<PointsView> createState() => _PointsViewState();
}

class _PointsViewState extends State<PointsView> {
  var siswa_id = 0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PointsController>(
      init: PointsController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Point Siswa"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  DropdownSearch<KelasSiswa>(
                    asyncItems: (String filter) async {
                      var response = await Dio().get(
                        "https://sidemit.sumenepsmansa.sch.id/api/kelasSiswa",
                        queryParameters: {"filter": filter},
                        options: Options(
                          headers: {
                            "Content-Type": "application/json",
                            "Authorization":
                                "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjE1YTllNzNmMjgxOWFiOTI5YTNmNWRhYmM3YmI0YWRhMDgwMTI4ZDcyNWZlN2NiYTIzNWM1ZTAxYWYxZDY0YjUxNDhmNTM2ZGZjOTlmMWE3In0.eyJhdWQiOiIzIiwianRpIjoiMTVhOWU3M2YyODE5YWI5MjlhM2Y1ZGFiYzdiYjRhZGEwODAxMjhkNzI1ZmU3Y2JhMjM1YzVlMDFhZjFkNjRiNTE0OGY1MzZkZmM5OWYxYTciLCJpYXQiOjE3MDY2Mjk2MjQsIm5iZiI6MTcwNjYyOTYyNCwiZXhwIjoxNzM4MjUyMDI0LCJzdWIiOiIxMTAxIiwic2NvcGVzIjpbImFkbWluIl19.mzvPnRNw14z0mw3sQNUTCy4BNjmIb5v0xoi-vOljB8HNKjyLIPRNVT5qf_ZlNrTfXHvOEh4awNDVNfleTA6wazPz4kFJw72qcdq8rfy2ygG-1A-NZ-7u6Ivdj3z3lLL1-QDOeHcEzwvvjMt6qDZ8DIdvYHvY1NdR06IzMu_l5hUfH1oUMRGMRiHsVUzntf-PFEyBCpBycXTDFL-wfwlP0GsgTXN_XGzS3sYHspbFIMja6DSSfFPc9Us7NJIncGjPI9NpbsTId3fIP7Sg3ocOzFMo0DoDyaStCnBSHvLdddfM2phDQxZPHQVSI31Hd71dCa_h4WSjYUjyVZWiHJFF_w6RBzubbl3ZucCorto52qOvf4vcCPJma9KxPJcMr4UhpURTrdHODJVpV-ST-ow-aME37EuS5cv0YPK60C5wEZehMaidG5d-lhj6dOcQr9hj-DYa5Oc4vNiYQYZ2qqS4lMuwO3tnZv6uUKusB_XwzryLBicnYviQOB1Nw4K-Thqte2jiOX4O-4Q1df7vC6BiXzs25lswpRcEdrebTJ1BHOPHqk_AorakriTpR0HpHjGjpQWetVdiRSNKlPYXzau-4QVVdqx_BjMoXW8GQlXDnr4QFZ3fIx2Zod6dOQO71pwr72lm9kYx6qoicg_aFj_5fGZFbY9Nb62nLIpxCKhTpvo"
                          },
                        ),
                      );
                      var models = KelasSiswa.fromJsonList(response.data);
                      return models;
                    },
                    itemAsString: (KelasSiswa u) => u.userAsString(),
                    onChanged: (KelasSiswa? data) {
                      siswa_id = data!.users.id;
                    },
                    popupProps: const PopupProps.menu(
                      showSearchBox: true,
                    ),
                    dropdownDecoratorProps: const DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "User by name",
                        hintText: "country in menu mode",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  DropdownSearch<SubTatibs>(
                    asyncItems: (String filter) async {
                      var response = await Dio().get(
                        "https://sidemit.sumenepsmansa.sch.id/api/subTatibs",
                        queryParameters: {"filter": filter},
                        options: Options(
                          headers: {
                            "Content-Type": "application/json",
                            "Authorization":
                                "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjE1YTllNzNmMjgxOWFiOTI5YTNmNWRhYmM3YmI0YWRhMDgwMTI4ZDcyNWZlN2NiYTIzNWM1ZTAxYWYxZDY0YjUxNDhmNTM2ZGZjOTlmMWE3In0.eyJhdWQiOiIzIiwianRpIjoiMTVhOWU3M2YyODE5YWI5MjlhM2Y1ZGFiYzdiYjRhZGEwODAxMjhkNzI1ZmU3Y2JhMjM1YzVlMDFhZjFkNjRiNTE0OGY1MzZkZmM5OWYxYTciLCJpYXQiOjE3MDY2Mjk2MjQsIm5iZiI6MTcwNjYyOTYyNCwiZXhwIjoxNzM4MjUyMDI0LCJzdWIiOiIxMTAxIiwic2NvcGVzIjpbImFkbWluIl19.mzvPnRNw14z0mw3sQNUTCy4BNjmIb5v0xoi-vOljB8HNKjyLIPRNVT5qf_ZlNrTfXHvOEh4awNDVNfleTA6wazPz4kFJw72qcdq8rfy2ygG-1A-NZ-7u6Ivdj3z3lLL1-QDOeHcEzwvvjMt6qDZ8DIdvYHvY1NdR06IzMu_l5hUfH1oUMRGMRiHsVUzntf-PFEyBCpBycXTDFL-wfwlP0GsgTXN_XGzS3sYHspbFIMja6DSSfFPc9Us7NJIncGjPI9NpbsTId3fIP7Sg3ocOzFMo0DoDyaStCnBSHvLdddfM2phDQxZPHQVSI31Hd71dCa_h4WSjYUjyVZWiHJFF_w6RBzubbl3ZucCorto52qOvf4vcCPJma9KxPJcMr4UhpURTrdHODJVpV-ST-ow-aME37EuS5cv0YPK60C5wEZehMaidG5d-lhj6dOcQr9hj-DYa5Oc4vNiYQYZ2qqS4lMuwO3tnZv6uUKusB_XwzryLBicnYviQOB1Nw4K-Thqte2jiOX4O-4Q1df7vC6BiXzs25lswpRcEdrebTJ1BHOPHqk_AorakriTpR0HpHjGjpQWetVdiRSNKlPYXzau-4QVVdqx_BjMoXW8GQlXDnr4QFZ3fIx2Zod6dOQO71pwr72lm9kYx6qoicg_aFj_5fGZFbY9Nb62nLIpxCKhTpvo"
                          },
                        ),
                      );
                      var models = SubTatibs.fromJsonList(response.data);
                      return models;
                    },
                    itemAsString: (SubTatibs u) => u.asSubTatib(),
                    onChanged: (SubTatibs? data) {},
                    popupProps: const PopupProps.menu(
                      showSearchBox: true,
                    ),
                    dropdownDecoratorProps: const DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "User by name",
                        hintText: "country in menu mode",
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      print(siswa_id);

                      setState(() {});
                    },
                    child: const Text("Save"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
