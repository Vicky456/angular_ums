import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'nav-bar',
  templateUrl: 'nav_bar.html',
  styleUrls: const ['nav_bar.css'],
    providers: const[ROUTER_DIRECTIVES],
  directives: const[ROUTER_DIRECTIVES])
class NavBar implements OnInit {

  NavBar();

  @override
  void ngOnInit() {}

}
