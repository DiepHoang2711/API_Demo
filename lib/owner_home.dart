import 'package:flutter/material.dart';
import 'package:flutter_with_api/apis/football_field_api.dart';

class OwnerHome extends StatefulWidget {
  const OwnerHome({Key? key}) : super(key: key);

  @override
  _OwnerHomeState createState() => _OwnerHomeState();
}

class _OwnerHomeState extends State<OwnerHome> {
  @override
  Widget build(BuildContext context) {
    var footballFieldAPI = new FootballFieldAPI();
    return Padding(padding: EdgeInsets.all(10),
        child: FutureBuilder(
          future: footballFieldAPI.findAll(),
          builder: (context, AsyncSnapshot<List> snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context,index) {
                    return Card(
                      child: ListTile(
                        title: Text(snapshot.data![index].fieldName),
                        subtitle: Text(snapshot.data![index].location),
                      ),
                    );
                  },
              );
            }else{
              return CircularProgressIndicator();
            }
          },
        )
    );
  }
}
