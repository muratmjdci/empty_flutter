/// Helps us create immutable data classes
/// 
/// NOTE: IF VALUES ARE GONNA BE MUTABLE, USE JSON MODEL;
/// 
/// Run this command to generate the model
/// 
/// flutter packages pub run build_runner build --delete-conflicting-outputs
/// 
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'example.freezed.dart';
// part 'example.g.dart';

// @freezed
// class Example with _$Example {
//   const factory Example({
//     required final String name,
//   }) = _Example;
//   factory Example.fromJson(Map<String, dynamic> json) =>
//       _$ExampleFromJson(json);
// }