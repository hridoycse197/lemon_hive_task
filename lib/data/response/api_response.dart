import 'package:lemon_hive_task/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  String? message;
  T? data;
  ApiResponse(this.status, this.data, this.message);
  ApiResponse.loading() : status = Status.loading;
  ApiResponse.completed() : status = Status.completed;
  ApiResponse.error() : status = Status.error;

  @override
  String toString() {
    return "Status: $status \n Message: $message \n Data: $data";
  }
}
