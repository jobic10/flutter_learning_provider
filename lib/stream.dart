import 'dart:async';

StreamController<double> controller = StreamController<double>();
Stream<String> lines(Stream<String> source) async* {
  var partial = '';
  await for (var chunk in source) {
    var lines = chunk.split('\n');
    lines[0] = partial + lines[0];
    partial = lines.removeLast();
    for (var line in lines) yield line;
  }
  if (partial.isNotEmpty) yield partial;
}

void main() {
  var counterStream =
      Stream<String>.periodic(Duration(seconds: 1), (x) => x.toString())
          .take(15);
  // counterStream.forEach(print);
  print("Wahala");
  print(lines(counterStream));
}
