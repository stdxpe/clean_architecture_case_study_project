import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_photo_update_event.freezed.dart';

@freezed
sealed class ProfilePhotoUpdateEvent with _$ProfilePhotoUpdateEvent {
  const factory ProfilePhotoUpdateEvent.selectPhoto() = ProfilePhotoSelectEvent;
  const factory ProfilePhotoUpdateEvent.uploadPhoto() = ProfilePhotoUploadEvent;
}
