import 'dart:async';
import 'package:angular/angular.dart';

import 'src/hero.dart';
import 'src/hero_detail_component.dart';
import 'src/hero_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  directives: const [CORE_DIRECTIVES, HeroDetailComponent],
  providers: const [HeroService],
)
class AppComponent implements OnInit {
  var name = 'Angular';
  final title = 'Tour of Heros';
  Hero selectedHero;
  List<Hero> heroes;

  final HeroService _heroService;
  AppComponent(this._heroService);

  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroesSlowly();
  }

  void ngOnInit() => getHeroes();

  void onSelect(Hero hero) => selectedHero = hero;
}