/*
Asyncronous programming
? The asynchronous programming allows to write programs in which 
  the task are no longer solved one after another, and instead are solved 
  in parallel

! while one task is being processed, processees are already running on 
  another task.

? Also, some tasks take more time - with async we can wait for them to finish

!> async / await / future

. async/await
  . wait for an event to occur in a thread/execution thread.
. Syntax to work with futures
. Future
  . a method whose execution time is not constant/ you have to wiat for it
*/

void main() async {
  DataService dataService = new DataService();
  String data = await dataService.getData();

  print(data);
}

class DataService {
  Future<String> _getDataFromCloud() async {
    // get data form cloud -> time
    await Future.delayed(Duration(seconds: 4));
    print("get data finished");
    return 'fake string';
  }

  Future<String> _parseDataFromCloud({required String dataFromCloud}) async {
    // get data form cloud -> time
    await Future.delayed(Duration(seconds: 4));
    print("Parsing done ");
    return 'parsed string data';
  }

  Future getData() async {
    final String dataFromCloud = await _getDataFromCloud();
    //! get data -> time
    final String parsedData =
        await _parseDataFromCloud(dataFromCloud: dataFromCloud);
    //? parse data -> time
    return parsedData;
    //! return data;
  }
}
