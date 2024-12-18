part of 'account_cubit.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = _Initial;
  const factory AccountState.loading() = _Loading;
  const factory AccountState.loaded(Customer customer) = _Loaded;
  const factory AccountState.failed(String message) = _Failed;
}
