/*
Streams :
Futures representds tha value that they deliver asynchronously
Streams are similar but instead of single value they can return zero or more values or error over time


*/

import 'dart:async';

void main() {
  final numberGenerator = NumberGenerator();
  final numberStream = numberGenerator.getStream.asBroadcastStream();
  //! broadcast -> can handle multiple subscribers

  StreamSubscription sub1 = numberStream.listen((event) {
    print('sub1: $event');
  });

  StreamSubscription sub2 = numberStream.listen((event) {
    print('sub2: ${event * event}');
  });

  Future.delayed(const Duration(seconds: 5), () {
    sub1.cancel();
    sub2.cancel();
  });
}

class NumberGenerator {
  NumberGenerator() {
    final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _controller.add(_counter);
      // _controller.sink.add(_counter);
      _counter++;
    });

    Future.delayed(const Duration(seconds: 10), () {
      timer.cancel();
      _controller.close();
    });
  }
  int _counter = 0;

  final StreamController<int> _controller = StreamController<int>();

  Stream<int> get getStream => _controller.stream;
}

// import 'dart:async';

// void main() {
//   //work with streams
//   final numberGenerator = NumberGenerator();

//   StreamSubscription sub1 = numberGenerator.stream.listen((event) {
//     print('sub1 : $event');
//   });
// }

// class NumberGenerator {
//   int _counter = 0;

//   StreamController<int> _controller = StreamController<int>.broadcast();

//   Stream<int> get stream => _controller.stream;
//   NumberGenerator() {
//     final Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       _controller.add(_counter);
//       _counter++;
//     });

//     Future.delayed(Duration(seconds: 10), () {
//       timer.cancel();
//       _controller.close();
//     });
//   }
// }
