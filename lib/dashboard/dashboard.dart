import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:http/browser_client.dart';
import 'dart:async';
import 'dart:convert';
import 'package:sms/dashboard/dash_1/dash_1.dart';

@Component(
  selector: 'dashboard',
  templateUrl: 'dashboard.html',
  styleUrls: const ['dashboard.css'],
  directives: const[CORE_DIRECTIVES,Dash1]
)
class Dashboard implements OnInit {

  Dashboard();

  var title;

  var url='http://localhost:8086/projectums/dashboard_api';


  var datas=new List();

  @override
  void ngOnInit() {
    //getDate();
  }



  getDate()async {
    var client = new BrowserClient();

    var response = await client.get(url);
    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

      var data=JSON.decode(response.body);



      this.title=data["title"].toString().replaceAll("[", "").replaceAll("]", "").split(",");
      int n=data["title"].toString().replaceAll("[", "").replaceAll("]", "").split(",").length;




    for (Map word in data['data']) {

      List t=new List();

      word.forEach((k,v) => t.add(v));

      this.datas.add(t);

    }


    //print(this.datas);





  }

}
