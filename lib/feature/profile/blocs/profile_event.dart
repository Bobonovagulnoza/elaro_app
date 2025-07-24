part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetchData() = _FetchData;
  const factory ProfileEvent.editProfile({required String name, required String surname, required String address}) = _EditProfile;
}
