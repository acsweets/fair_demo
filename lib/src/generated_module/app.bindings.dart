// flutterVersion = '3.16.0'
// dartVersion = '3.2.0'
// widgetCount = 0
// apiCount = 8
// ignore_for_file: unused_import, unnecessary_import, implementation_imports, unused_shown_name, deprecated_member_use, prefer_single_quotes, unused_element, unused_field, duplicate_import, prefer_const_constructors, invalid_use_of_visible_for_testing_member
import 'package:flutter/material.dart';
import 'package:demo/src/sugar/dart_core.dart';
import 'package:fair/fair.dart';

const String flutterVersion = '3.16.0';
const String dartVersion = '3.2.0';
const int widgetCount = 0;
const int apiCount = 8;

/// appComponents
Map<String, dynamic> appComponents = {
  'SugarBool.and': (props) => SugarBool.and(props['pa'][0], props['pa'][1]),
  'SugarBool.boolToString': (props) => SugarBool.boolToString(props['pa'][0]),
  'SugarBool.exclusiveOr': (props) =>
      SugarBool.exclusiveOr(props['pa'][0], props['pa'][1]),
  'SugarBool.inclusiveOr': (props) =>
      SugarBool.inclusiveOr(props['pa'][0], props['pa'][1]),
  'SugarBool.invert': (props) => SugarBool.invert(props['pa'][0]),
  'SugarBool.parse': (props) => SugarBool.parse(props['pa'][0],
      caseSensitive: props['caseSensitive'] ?? true),
  'SugarBool.tryParse': (props) => SugarBool.tryParse(props['pa'][0],
      caseSensitive: props['caseSensitive'] ?? true),
  'SugarDouble.abs': (props) => SugarDouble.abs(props['pa'][0]?.toDouble()),
  'SugarDouble.adds': (props) =>
      SugarDouble.adds(props['pa'][0]?.toDouble(), props['pa'][1]),
  'SugarDouble.ceil': (props) => SugarDouble.ceil(props['pa'][0]?.toDouble()),
  'SugarDouble.ceilToDouble': (props) =>
      SugarDouble.ceilToDouble(props['pa'][0]?.toDouble()),
  'SugarDouble.divides': (props) =>
      SugarDouble.divides(props['pa'][0]?.toDouble(), props['pa'][1]),
  'SugarDouble.doubleToString': (props) =>
      SugarDouble.doubleToString(props['pa'][0]?.toDouble()),
  'SugarDouble.euclideanModulo': (props) =>
      SugarDouble.euclideanModulo(props['pa'][0]?.toDouble(), props['pa'][1]),
  'SugarDouble.floor': (props) => SugarDouble.floor(props['pa'][0]?.toDouble()),
  'SugarDouble.floorToDouble': (props) =>
      SugarDouble.floorToDouble(props['pa'][0]?.toDouble()),
  'SugarDouble.infinity': (props) => SugarDouble.infinity(),
  'SugarDouble.maxFinite': (props) => SugarDouble.maxFinite(),
  'SugarDouble.minPositive': (props) => SugarDouble.minPositive(),
  'SugarDouble.multiplies': (props) =>
      SugarDouble.multiplies(props['pa'][0]?.toDouble(), props['pa'][1]),
  'SugarDouble.nan': (props) => SugarDouble.nan(),
  'SugarDouble.negation': (props) =>
      SugarDouble.negation(props['pa'][0]?.toDouble()),
  'SugarDouble.negativeInfinity': (props) => SugarDouble.negativeInfinity(),
  'SugarDouble.parse': (props) => SugarDouble.parse(props['pa'][0]),
  'SugarDouble.remainder': (props) =>
      SugarDouble.remainder(props['pa'][0]?.toDouble(), props['pa'][1]),
  'SugarDouble.round': (props) => SugarDouble.round(props['pa'][0]?.toDouble()),
  'SugarDouble.roundToDouble': (props) =>
      SugarDouble.roundToDouble(props['pa'][0]?.toDouble()),
  'SugarDouble.sign': (props) => SugarDouble.sign(props['pa'][0]?.toDouble()),
  'SugarDouble.subtracts': (props) =>
      SugarDouble.subtracts(props['pa'][0]?.toDouble(), props['pa'][1]),
  'SugarDouble.truncate': (props) =>
      SugarDouble.truncate(props['pa'][0]?.toDouble()),
  'SugarDouble.truncateToDouble': (props) =>
      SugarDouble.truncateToDouble(props['pa'][0]?.toDouble()),
  'SugarDouble.truncatingDivision': (props) => SugarDouble.truncatingDivision(
      props['pa'][0]?.toDouble(), props['pa'][1]),
  'SugarDouble.tryParse': (props) => SugarDouble.tryParse(props['pa'][0]),
  'SugarInt.abs': (props) => SugarInt.abs(props['pa'][0]),
  'SugarInt.and': (props) => SugarInt.and(props['pa'][0], props['pa'][1]),
  'SugarInt.bitLength': (props) => SugarInt.bitLength(props['pa'][0]),
  'SugarInt.ceil': (props) => SugarInt.ceil(props['pa'][0]),
  'SugarInt.ceilToDouble': (props) => SugarInt.ceilToDouble(props['pa'][0]),
  'SugarInt.exclusiveOr': (props) =>
      SugarInt.exclusiveOr(props['pa'][0], props['pa'][1]),
  'SugarInt.floor': (props) => SugarInt.floor(props['pa'][0]),
  'SugarInt.floorToDouble': (props) => SugarInt.floorToDouble(props['pa'][0]),
  'SugarInt.gcd': (props) => SugarInt.gcd(props['pa'][0], props['pa'][1]),
  'SugarInt.intToString': (props) => SugarInt.intToString(props['pa'][0]),
  'SugarInt.isEven': (props) => SugarInt.isEven(props['pa'][0]),
  'SugarInt.isOdd': (props) => SugarInt.isOdd(props['pa'][0]),
  'SugarInt.leftShift': (props) =>
      SugarInt.leftShift(props['pa'][0], props['pa'][1]),
  'SugarInt.modInverse': (props) =>
      SugarInt.modInverse(props['pa'][0], props['pa'][1]),
  'SugarInt.modPow': (props) =>
      SugarInt.modPow(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarInt.negate': (props) => SugarInt.negate(props['pa'][0]),
  'SugarInt.negation': (props) => SugarInt.negation(props['pa'][0]),
  'SugarInt.or': (props) => SugarInt.or(props['pa'][0], props['pa'][1]),
  'SugarInt.parse': (props) =>
      SugarInt.parse(props['pa'][0], radix: props['radix']),
  'SugarInt.rightShift': (props) =>
      SugarInt.rightShift(props['pa'][0], props['pa'][1]),
  'SugarInt.round': (props) => SugarInt.round(props['pa'][0]),
  'SugarInt.roundToDouble': (props) => SugarInt.roundToDouble(props['pa'][0]),
  'SugarInt.sign': (props) => SugarInt.sign(props['pa'][0]),
  'SugarInt.toRadixString': (props) =>
      SugarInt.toRadixString(props['pa'][0], props['pa'][1]),
  'SugarInt.toSigned': (props) =>
      SugarInt.toSigned(props['pa'][0], props['pa'][1]),
  'SugarInt.toUnsigned': (props) =>
      SugarInt.toUnsigned(props['pa'][0], props['pa'][1]),
  'SugarInt.truncate': (props) => SugarInt.truncate(props['pa'][0]),
  'SugarInt.truncateToDouble': (props) =>
      SugarInt.truncateToDouble(props['pa'][0]),
  'SugarInt.tryParse': (props) =>
      SugarInt.tryParse(props['pa'][0], radix: props['radix']),
  'SugarInt.unsignedRightShift': (props) =>
      SugarInt.unsignedRightShift(props['pa'][0], props['pa'][1]),
  'SugarIterable.any': (props) =>
      SugarIterable.any(props['pa'][0], props['pa'][1]),
  'SugarIterable.cast': (props) => SugarIterable.cast(props['pa'][0]),
  'SugarIterable.castFrom': (props) => SugarIterable.castFrom(props['pa'][0]),
  'SugarIterable.contains': (props) =>
      SugarIterable.contains(props['pa'][0], props['pa'][1]),
  'SugarIterable.elementAt': (props) =>
      SugarIterable.elementAt(props['pa'][0], props['pa'][1]),
  'SugarIterable.every': (props) =>
      SugarIterable.every(props['pa'][0], props['pa'][1]),
  'SugarIterable.expand': (props) =>
      SugarIterable.expand(props['pa'][0], props['pa'][1]),
  'SugarIterable.first': (props) => SugarIterable.first(props['pa'][0]),
  'SugarIterable.firstWhere': (props) => SugarIterable.firstWhere(
      props['pa'][0], props['pa'][1],
      orElse: props['orElse']),
  'SugarIterable.fold': (props) =>
      SugarIterable.fold(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarIterable.followedBy': (props) =>
      SugarIterable.followedBy(props['pa'][0], props['pa'][1]),
  'SugarIterable.forEach': (props) =>
      SugarIterable.forEach(props['pa'][0], props['pa'][1]),
  'SugarIterable.isEmpty': (props) => SugarIterable.isEmpty(props['pa'][0]),
  'SugarIterable.isNotEmpty': (props) =>
      SugarIterable.isNotEmpty(props['pa'][0]),
  'SugarIterable.iterableToFullString': (props) =>
      SugarIterable.iterableToFullString(
          props['pa'][0], props['pa'][1] ?? '(', props['pa'][2] ?? ')'),
  'SugarIterable.iterableToShortString': (props) =>
      SugarIterable.iterableToShortString(
          props['pa'][0], props['pa'][1] ?? '(', props['pa'][2] ?? ')'),
  'SugarIterable.iterableToString': (props) =>
      SugarIterable.iterableToString(props['pa'][0]),
  'SugarIterable.iterator': (props) => SugarIterable.iterator(props['pa'][0]),
  'SugarIterable.join': (props) =>
      SugarIterable.join(props['pa'][0], props['pa'][1] ?? ""),
  'SugarIterable.last': (props) => SugarIterable.last(props['pa'][0]),
  'SugarIterable.lastWhere': (props) => SugarIterable.lastWhere(
      props['pa'][0], props['pa'][1],
      orElse: props['orElse']),
  'SugarIterable.length': (props) => SugarIterable.length(props['pa'][0]),
  'SugarIterable.map': (props) =>
      SugarIterable.map(props['pa'][0], props['pa'][1]),
  'SugarIterable.reduce': (props) =>
      SugarIterable.reduce(props['pa'][0], props['pa'][1]),
  'SugarIterable.single': (props) => SugarIterable.single(props['pa'][0]),
  'SugarIterable.singleWhere': (props) => SugarIterable.singleWhere(
      props['pa'][0], props['pa'][1],
      orElse: props['orElse']),
  'SugarIterable.skip': (props) =>
      SugarIterable.skip(props['pa'][0], props['pa'][1]),
  'SugarIterable.skipWhile': (props) =>
      SugarIterable.skipWhile(props['pa'][0], props['pa'][1]),
  'SugarIterable.take': (props) =>
      SugarIterable.take(props['pa'][0], props['pa'][1]),
  'SugarIterable.takeWhile': (props) =>
      SugarIterable.takeWhile(props['pa'][0], props['pa'][1]),
  'SugarIterable.toList': (props) =>
      SugarIterable.toList(props['pa'][0], growable: props['growable'] ?? true),
  'SugarIterable.toSet': (props) => SugarIterable.toSet(props['pa'][0]),
  'SugarIterable.where': (props) =>
      SugarIterable.where(props['pa'][0], props['pa'][1]),
  'SugarIterable.whereType': (props) => SugarIterable.whereType(props['pa'][0]),
  'SugarList.add': (props) => SugarList.add(props['pa'][0], props['pa'][1]),
  'SugarList.addAll': (props) =>
      SugarList.addAll(props['pa'][0], props['pa'][1]),
  'SugarList.adds': (props) => SugarList.adds(props['pa'][0], props['pa'][1]),
  'SugarList.asMap': (props) => SugarList.asMap(props['pa'][0]),
  'SugarList.cast': (props) => SugarList.cast(props['pa'][0]),
  'SugarList.castFrom': (props) => SugarList.castFrom(props['pa'][0]),
  'SugarList.clear': (props) => SugarList.clear(props['pa'][0]),
  'SugarList.copyRange': (props) => SugarList.copyRange(props['pa'][0],
      props['pa'][1], props['pa'][2], props['pa'][3], props['pa'][4]),
  'SugarList.empty': (props) =>
      SugarList.empty(growable: props['growable'] ?? false),
  'SugarList.equalTo': (props) =>
      SugarList.equalTo(props['pa'][0], props['pa'][1]),
  'SugarList.fillRange': (props) => SugarList.fillRange(
      props['pa'][0], props['pa'][1], props['pa'][2], props['pa'][3]),
  'SugarList.filled': (props) => SugarList.filled(
      props['pa'][0], props['pa'][1],
      growable: props['growable'] ?? false),
  'SugarList.from': (props) =>
      SugarList.from(props['pa'][0], growable: props['growable'] ?? true),
  'SugarList.generate': (props) => SugarList.generate(
      props['pa'][0], props['pa'][1],
      growable: props['growable'] ?? true),
  'SugarList.get': (props) => SugarList.get(props['pa'][0], props['pa'][1]),
  'SugarList.getRange': (props) =>
      SugarList.getRange(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarList.indexOf': (props) =>
      SugarList.indexOf(props['pa'][0], props['pa'][1], props['pa'][2] ?? 0),
  'SugarList.indexWhere': (props) =>
      SugarList.indexWhere(props['pa'][0], props['pa'][1], props['pa'][2] ?? 0),
  'SugarList.insert': (props) =>
      SugarList.insert(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarList.insertAll': (props) =>
      SugarList.insertAll(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarList.lastIndexOf': (props) => SugarList.lastIndexOf(
      props['pa'][0], props['pa'][1], props['pa'][2] ?? 0),
  'SugarList.lastIndexWhere': (props) => SugarList.lastIndexWhere(
      props['pa'][0], props['pa'][1], props['pa'][2] ?? 0),
  'SugarList.length': (props) => SugarList.length(props['pa'][0]),
  'SugarList.of': (props) =>
      SugarList.of(props['pa'][0], growable: props['growable'] ?? true),
  'SugarList.remove': (props) =>
      SugarList.remove(props['pa'][0], props['pa'][1]),
  'SugarList.removeAt': (props) =>
      SugarList.removeAt(props['pa'][0], props['pa'][1]),
  'SugarList.removeLast': (props) => SugarList.removeLast(props['pa'][0]),
  'SugarList.removeRange': (props) =>
      SugarList.removeRange(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarList.removeWhere': (props) =>
      SugarList.removeWhere(props['pa'][0], props['pa'][1]),
  'SugarList.replaceRange': (props) => SugarList.replaceRange(
      props['pa'][0], props['pa'][1], props['pa'][2], props['pa'][3]),
  'SugarList.retainWhere': (props) =>
      SugarList.retainWhere(props['pa'][0], props['pa'][1]),
  'SugarList.reversed': (props) => SugarList.reversed(props['pa'][0]),
  'SugarList.set': (props) =>
      SugarList.set(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarList.setAll': (props) =>
      SugarList.setAll(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarList.setRange': (props) => SugarList.setRange(props['pa'][0],
      props['pa'][1], props['pa'][2], props['pa'][3], props['pa'][4] ?? 0),
  'SugarList.shuffle': (props) =>
      SugarList.shuffle(props['pa'][0], props['pa'][1]),
  'SugarList.sort': (props) => SugarList.sort(props['pa'][0], props['pa'][1]),
  'SugarList.sublist': (props) =>
      SugarList.sublist(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarList.unmodifiable': (props) => SugarList.unmodifiable(props['pa'][0]),
  'SugarList.writeIterable': (props) =>
      SugarList.writeIterable(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarMap.addAll': (props) => SugarMap.addAll(props['pa'][0], props['pa'][1]),
  'SugarMap.addEntries': (props) =>
      SugarMap.addEntries(props['pa'][0], props['pa'][1]),
  'SugarMap.clear': (props) => SugarMap.clear(props['pa'][0]),
  'SugarMap.containsKey': (props) =>
      SugarMap.containsKey(props['pa'][0], props['pa'][1]),
  'SugarMap.containsValue': (props) =>
      SugarMap.containsValue(props['pa'][0], props['pa'][1]),
  'SugarMap.entries': (props) => SugarMap.entries(props['pa'][0]),
  'SugarMap.forEach': (props) =>
      SugarMap.forEach(props['pa'][0], props['pa'][1]),
  'SugarMap.get': (props) => SugarMap.get(props['pa'][0], props['pa'][1]),
  'SugarMap.isEmpty': (props) => SugarMap.isEmpty(props['pa'][0]),
  'SugarMap.isNotEmpty': (props) => SugarMap.isNotEmpty(props['pa'][0]),
  'SugarMap.keys': (props) => SugarMap.keys(props['pa'][0]),
  'SugarMap.length': (props) => SugarMap.length(props['pa'][0]),
  'SugarMap.putIfAbsent': (props) =>
      SugarMap.putIfAbsent(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarMap.remove': (props) => SugarMap.remove(props['pa'][0], props['pa'][1]),
  'SugarMap.removeWhere': (props) =>
      SugarMap.removeWhere(props['pa'][0], props['pa'][1]),
  'SugarMap.set': (props) =>
      SugarMap.set(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarMap.update': (props) => SugarMap.update(
      props['pa'][0], props['pa'][1], props['pa'][2],
      ifAbsent: props['ifAbsent']),
  'SugarMap.updateAll': (props) =>
      SugarMap.updateAll(props['pa'][0], props['pa'][1]),
  'SugarMap.values': (props) => SugarMap.values(props['pa'][0]),
  'SugarNum.abs': (props) => SugarNum.abs(props['pa'][0]),
  'SugarNum.adds': (props) => SugarNum.adds(props['pa'][0], props['pa'][1]),
  'SugarNum.ceil': (props) => SugarNum.ceil(props['pa'][0]),
  'SugarNum.ceilToDouble': (props) => SugarNum.ceilToDouble(props['pa'][0]),
  'SugarNum.clamp': (props) =>
      SugarNum.clamp(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarNum.compareTo': (props) =>
      SugarNum.compareTo(props['pa'][0], props['pa'][1]),
  'SugarNum.divides': (props) =>
      SugarNum.divides(props['pa'][0], props['pa'][1]),
  'SugarNum.equalTo': (props) =>
      SugarNum.equalTo(props['pa'][0], props['pa'][1]),
  'SugarNum.euclideanModulo': (props) =>
      SugarNum.euclideanModulo(props['pa'][0], props['pa'][1]),
  'SugarNum.floor': (props) => SugarNum.floor(props['pa'][0]),
  'SugarNum.floorToDouble': (props) => SugarNum.floorToDouble(props['pa'][0]),
  'SugarNum.greaterThan': (props) =>
      SugarNum.greaterThan(props['pa'][0], props['pa'][1]),
  'SugarNum.greaterThanOrEqualTo': (props) =>
      SugarNum.greaterThanOrEqualTo(props['pa'][0], props['pa'][1]),
  'SugarNum.isFinite': (props) => SugarNum.isFinite(props['pa'][0]),
  'SugarNum.isInfinite': (props) => SugarNum.isInfinite(props['pa'][0]),
  'SugarNum.isNaN': (props) => SugarNum.isNaN(props['pa'][0]),
  'SugarNum.isNegative': (props) => SugarNum.isNegative(props['pa'][0]),
  'SugarNum.multiplies': (props) =>
      SugarNum.multiplies(props['pa'][0], props['pa'][1]),
  'SugarNum.negation': (props) => SugarNum.negation(props['pa'][0]),
  'SugarNum.numToString': (props) => SugarNum.numToString(props['pa'][0]),
  'SugarNum.parse': (props) => SugarNum.parse(props['pa'][0], props['pa'][1]),
  'SugarNum.remainder': (props) =>
      SugarNum.remainder(props['pa'][0], props['pa'][1]),
  'SugarNum.round': (props) => SugarNum.round(props['pa'][0]),
  'SugarNum.roundToDouble': (props) => SugarNum.roundToDouble(props['pa'][0]),
  'SugarNum.sign': (props) => SugarNum.sign(props['pa'][0]),
  'SugarNum.smallerThan': (props) =>
      SugarNum.smallerThan(props['pa'][0], props['pa'][1]),
  'SugarNum.smallerThanOrEqualTo': (props) =>
      SugarNum.smallerThanOrEqualTo(props['pa'][0], props['pa'][1]),
  'SugarNum.subtracts': (props) =>
      SugarNum.subtracts(props['pa'][0], props['pa'][1]),
  'SugarNum.toDouble': (props) => SugarNum.toDouble(props['pa'][0]),
  'SugarNum.toInt': (props) => SugarNum.toInt(props['pa'][0]),
  'SugarNum.toStringAsExponential': (props) =>
      SugarNum.toStringAsExponential(props['pa'][0], props['pa'][1]),
  'SugarNum.toStringAsFixed': (props) =>
      SugarNum.toStringAsFixed(props['pa'][0], props['pa'][1]),
  'SugarNum.toStringAsPrecision': (props) =>
      SugarNum.toStringAsPrecision(props['pa'][0], props['pa'][1]),
  'SugarNum.truncate': (props) => SugarNum.truncate(props['pa'][0]),
  'SugarNum.truncateToDouble': (props) =>
      SugarNum.truncateToDouble(props['pa'][0]),
  'SugarNum.truncatingDivision': (props) =>
      SugarNum.truncatingDivision(props['pa'][0], props['pa'][1]),
  'SugarNum.tryParse': (props) => SugarNum.tryParse(props['pa'][0]),
  'SugarString.codeUnitAt': (props) =>
      SugarString.codeUnitAt(props['pa'][0], props['pa'][1]),
  'SugarString.codeUnits': (props) => SugarString.codeUnits(props['pa'][0]),
  'SugarString.compareTo': (props) =>
      SugarString.compareTo(props['pa'][0], props['pa'][1]),
  'SugarString.concatenates': (props) =>
      SugarString.concatenates(props['pa'][0], props['pa'][1]),
  'SugarString.contains': (props) =>
      SugarString.contains(props['pa'][0], props['pa'][1], props['pa'][2] ?? 0),
  'SugarString.endsWith': (props) =>
      SugarString.endsWith(props['pa'][0], props['pa'][1]),
  'SugarString.equalTo': (props) =>
      SugarString.equalTo(props['pa'][0], props['pa'][1]),
  'SugarString.getChar': (props) =>
      SugarString.getChar(props['pa'][0], props['pa'][1]),
  'SugarString.indexOf': (props) =>
      SugarString.indexOf(props['pa'][0], props['pa'][1], props['pa'][2] ?? 0),
  'SugarString.isEmpty': (props) => SugarString.isEmpty(props['pa'][0]),
  'SugarString.isNotEmpty': (props) => SugarString.isNotEmpty(props['pa'][0]),
  'SugarString.lastIndexOf': (props) => SugarString.lastIndexOf(
      props['pa'][0], props['pa'][1], props['pa'][2] ?? 0),
  'SugarString.length': (props) => SugarString.length(props['pa'][0]),
  'SugarString.multipliedConcatenates': (props) =>
      SugarString.multipliedConcatenates(props['pa'][0], props['pa'][1]),
  'SugarString.padLeft': (props) => SugarString.padLeft(
      props['pa'][0], props['pa'][1], props['pa'][2] ?? ' '),
  'SugarString.padRight': (props) => SugarString.padRight(
      props['pa'][0], props['pa'][1], props['pa'][2] ?? ' '),
  'SugarString.replaceAll': (props) =>
      SugarString.replaceAll(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarString.replaceAllMapped': (props) => SugarString.replaceAllMapped(
      props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarString.replaceFirst': (props) => SugarString.replaceFirst(
      props['pa'][0], props['pa'][1], props['pa'][2], props['pa'][3] ?? 0),
  'SugarString.replaceFirstMapped': (props) => SugarString.replaceFirstMapped(
      props['pa'][0], props['pa'][1], props['pa'][2], props['pa'][3] ?? 0),
  'SugarString.replaceRange': (props) => SugarString.replaceRange(
      props['pa'][0], props['pa'][1], props['pa'][2], props['pa'][3]),
  'SugarString.runes': (props) => SugarString.runes(props['pa'][0]),
  'SugarString.split': (props) =>
      SugarString.split(props['pa'][0], props['pa'][1]),
  'SugarString.splitMapJoin': (props) => SugarString.splitMapJoin(
      props['pa'][0], props['pa'][1],
      onMatch: props['onMatch'], onNonMatch: props['onNonMatch']),
  'SugarString.startsWith': (props) => SugarString.startsWith(
      props['pa'][0], props['pa'][1], props['pa'][2] ?? 0),
  'SugarString.substring': (props) =>
      SugarString.substring(props['pa'][0], props['pa'][1], props['pa'][2]),
  'SugarString.toLowerCase': (props) => SugarString.toLowerCase(props['pa'][0]),
  'SugarString.toUpperCase': (props) => SugarString.toUpperCase(props['pa'][0]),
  'SugarString.trim': (props) => SugarString.trim(props['pa'][0]),
  'SugarString.trimLeft': (props) => SugarString.trimLeft(props['pa'][0]),
  'SugarString.trimRight': (props) => SugarString.trimRight(props['pa'][0]),
};

/// appMapping
Map<String, bool> appMapping = {
  'SugarBool': false,
  'SugarDouble': false,
  'SugarInt': false,
  'SugarIterable': false,
  'SugarList': false,
  'SugarMap': false,
  'SugarNum': false,
  'SugarString': false,
};
