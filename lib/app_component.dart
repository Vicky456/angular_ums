import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

import 'package:sms/dashboard/dashboard.dart';
import 'package:sms/nav_bar/nav_bar.dart';
import 'src/todo_list/todo_list_component.dart';


// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives,ROUTER_DIRECTIVES, TodoListComponent,NavBar,Dashboard],
  providers: const [materialProviders],
)



//const Route(path: '/heroes', name: 'Heroes', component: TodoListComponent),

@RouteConfig(const [

  const Redirect(path: '/',redirectTo: const ['DashBoard']),
  const Route(path: '/dashboard', name: 'DashBoard', component: Dashboard),
  const Route(path: '/heroes', name: 'Heroes', component: Dashboard),
  const Route(path: '/**', name: 'Dashboard', component: Dashboard),

])


class AppComponent implements OnInit {
  // Nothing here yet. All logic is in TodoListComponent.

  var router_name="demo";
  Router rout;
  AppComponent(this.rout);

  @override
  ngOnInit() {



  }
}
