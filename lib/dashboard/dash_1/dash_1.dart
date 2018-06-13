import 'package:angular/angular.dart';
import 'package:http/browser_client.dart';
import 'dart:async';
import 'dart:convert';
import 'package:sms/dashboard/dash_1/dash_1.dart';

@Component(
  selector: 'dash-1',
  templateUrl: 'dash_1.html',
  styleUrls: const ['dash_1.css'],
    directives: const[CORE_DIRECTIVES]
)
class Dash1 implements OnInit {


  String sut,stf,dep;

  var title;




  var datas=new List();

  Dash1();

  @override
  void ngOnInit() {

    getData_time();

  }


  getData_time(){
    getDate();
    getDate1();


  }


  getDate()async {
    var client = new BrowserClient();

    var response = await client.get("http://localhost:8086/projectums/dash1_api");


    var data=JSON.decode(response.body);




    var datas;




    //print(data['data']);


    this.sut=data['data'][0]['student'];
    this.stf=data['data'][1]['staff'];
    this.dep=data['data'][2]['dept'];








  }




  getDate1()async {
    var client = new BrowserClient();
    var response = await client.get("http://localhost:8086/projectums/dashboard_api?id=1");
    var data=JSON.decode(response.body);
    this.title=data["title"].toString().replaceAll("[", "").replaceAll("]", "").split(",");
    for (Map word in data['data']) {
      List t=new List();
      word.forEach((k,v) => t.add(v));
      this.datas.add(t);
    }
  }
}
