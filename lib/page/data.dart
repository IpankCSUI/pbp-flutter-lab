import 'package:counter_7/drawer.dart';
import 'package:counter_7/page/tambah.dart' as form;
import 'package:flutter/material.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Data Budget'),
        ),
        drawer: const LabDrawer(),
        body: ListView.builder(
            itemCount: form.data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    title: Text(form.data[index]['judul']),
                    subtitle: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            form.data[index]['tanggal'],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            form.data[index]['nominal'],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 0),
                      child: Text(form.data[index]['jenis']),
                    )),
              );
            }
          )
        );
  }
}
