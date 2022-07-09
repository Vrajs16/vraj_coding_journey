import 'dart:async';
import 'dart:math';

void main() async {
  // print('Ready. Sing');
  // line1();
  // line2();
  // line3();
  // print(await line4());
  // runMultipleDownloads();
  // var futureValue =
  //     timedOutFuture().timeout(Duration(seconds: 2), onTimeout: (() {
  //   print("This future has timed out");
  //   return 'Timeout Value';
  // }));

  // print(await futureValue);
  final Set<int> x = <int>{};
}

// Future<void> line1() {
//   return Future.delayed(
//       Duration(seconds: 2), () => print('Happy Birthday to You'));
// }

// Future<void> line2() {
//   return Future.delayed(
//       Duration(seconds: 5), () => print('Happy Birthday to You'));
// }

// Future<void> line3() {
//   return Future.delayed(
//       Duration(seconds: 8), () => print('Happy Birthday, Happy Birthday...'));
// }

// Future<String> line4() async {
//   String greeting = "Happy Birthday to You";
//   return await Future.delayed(Duration(seconds: 8), () => greeting);
// }

Future<bool> downloadFile(int id, int duration) async {
  await Future.delayed(Duration(seconds: duration));
  print('Download complete for $id');
  return true;
}

Future runMultipleDownloads() async {
  List<Future> futures = [];
  for (var i = 0; i < 10; i++) {
    futures.add(downloadFile(i, Random(i).nextInt(10)));
  }
  print('start downloads');
  await Future.wait(futures);
  print('All Downloads have completed');
}

Future<String> timedOutFuture() {
  print('Future started');
  return Future.delayed(Duration(seconds: 3), () => 'Future Completed');
}
