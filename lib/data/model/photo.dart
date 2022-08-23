import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

part 'photo.g.dart';

@freezed
class photo with _$$photo {
  const factory photo({
    required String previewURL,
    required String tags,
  }) = _photo;

  factory photo.fromJson(Map<String, Object?> json) => _$$photoFromJson(json);
}