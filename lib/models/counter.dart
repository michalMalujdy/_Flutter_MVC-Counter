class Model {
  int getCounter() => _counter;
  int _counter = 0;
  int incrementCounter() => ++ _counter;
  int decrementCounter() => -- _counter;
}