import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:http/browser_client.dart';
import 'dart:async';
import 'dart:convert';
import 'package:sms/dashboard/dash_1/dash_1.dart';
import 'package:sms/dashboard/dash_2/dash_2.dart';
import 'package:sms/dashboard/dash_3/dash_3.dart';
import 'package:sms/dashboard/dash_4/dash_4.dart';
import 'package:sms/dashboard/dash_5/dash_5.dart';
import 'package:sms/dashboard/dash_6/dash_6.dart';
import 'package:sms/dashboard/dash_7/dash_7.dart';

@Component(
  selector: 'dashboard',
  templateUrl: 'dashboard.html',
  styleUrls: const ['dashboard.css'],
  directives: const[CORE_DIRECTIVES,Dash1,Dash2,Dash3,Dash4,Dash5,Dash6,Dash7]
)
class Dashboard implements OnInit {

  Dashboard();

  var title;

  var url='http://localhost:8086/projectums/dashboard_api';


  var datas='';

  @override
  void ngOnInit() {
    getDate();
  }



  getDate()async {
    var client = new BrowserClient();

    var response = await client.get(url);
    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

      var data=JSON.decode(response.body);





    print(data['data'][0]['1']);

    



  }

}
