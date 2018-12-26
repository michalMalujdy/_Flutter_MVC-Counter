import 'package:counter/models/counter.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class Controller extends ControllerMVC {
  Model model = Model();
  int get counter => model.getCounter();
}