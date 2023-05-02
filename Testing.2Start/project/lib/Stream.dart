Stream<int> countStream(int max) async* {
  for (int i = 0; i < max; i++) {
    yield i;
  }
}

//consume stream
Future<int> sumStream(Stream<dynamic> stream) async {
  int sum = 0;
  await for (int item in stream) {
    sum += item;
  }
  return sum;
}
