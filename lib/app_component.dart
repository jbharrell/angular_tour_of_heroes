import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'my-app',
  template: '''
    <h1>{{title}}</h1>
    <h2>{{hero.name}} details!</h2>
    <div><label>id: </label>{{hero.id}}</div>
    <div>
      <label>name: </label>
      <input [(ngModel)]="hero.name" placeholder="name">
    </div>
  ''',
  directives: const [formDirectives],
)
class AppComponent {
  var name = 'Angular';
  final title = 'Tour of Heros';
  Hero hero = new Hero(1, 'Windstorm');
}

class Hero {
  final int id;
  String name;

  Hero(this.id, this.name);
}