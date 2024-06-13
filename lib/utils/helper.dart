import 'dart:developer';

import 'package:flutter/material.dart';

double mediaQueryHeight(BuildContext context, double size) =>
    (MediaQuery.of(context).size.height / 932) * size;
double mediaQueryWidth(BuildContext context, double size) =>
    (MediaQuery.of(context).size.width / 432) * size;
double fullHeight(BuildContext context) => (MediaQuery.of(context).size.height);
double fullWidth(BuildContext context) => (MediaQuery.of(context).size.width);

int hashId(String string) {
  var hash = 0xcbf29ce484222325;

  var i = 0;
  while (i < string.length) {
    final codeUnit = string.codeUnitAt(i++);
    hash ^= codeUnit >> 8;
    hash *= 0x100000001b3;
    hash ^= codeUnit & 0xFF;
    hash *= 0x100000001b3;
  }

  return hash;
}

void kLog(value) {
  log('$value');
}

void nLog(value) {
  log('$value', name: 'nlog');
}

void kError(value) {
  log('\x1B[31m$value');
  log('\x1B[31m---------------------------------------------------------------------------');
}
