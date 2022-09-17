import 'dart:io';

getUserInput(
    {required String msg, required String field, String valType = 'String'}) {
  print(msg);
  var val = stdin.readLineSync();
  if (val == null || val.isEmpty) {
    getUserInput(msg: '$field is required', field: field, valType: valType);
  }

  if (valType == 'String') {
    return val;
  } else {
    return int.tryParse(val!) ??
        getUserInput(msg: msg, field: field, valType: valType);
  }
}
