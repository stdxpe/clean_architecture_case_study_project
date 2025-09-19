import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_photo_update_status.freezed.dart';

@freezed
sealed class PPUpdateStatus with _$PPUpdateStatus {
  const factory PPUpdateStatus.initial() = _Initial;
  const factory PPUpdateStatus.selectingPhoto() = SelectingPhoto;
  const factory PPUpdateStatus.uploadingPhoto() = UploadingPhoto;
  const factory PPUpdateStatus.selectSuccess() = _SelectSuccess;
  const factory PPUpdateStatus.uploadSuccess() = _UploadSuccess;
  const factory PPUpdateStatus.failure(String? message) = _Failure;
}
