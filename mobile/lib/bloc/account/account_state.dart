part of 'account_cubit.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = _Initial;
  const factory AccountState.loading() = _Loading;
  const factory AccountState.noAccount() = _NoAccount;
  const factory AccountState.loaded(Account account) = _Loaded;
  const factory AccountState.failed(String message) = _Failed;
}
