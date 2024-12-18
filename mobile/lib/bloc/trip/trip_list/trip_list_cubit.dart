import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jiffy/jiffy.dart';

import '../../../widgets/toast/dialog.dart';

part 'trip_list_state.dart';
part 'trip_list_cubit.freezed.dart';

class TripListCubit extends Cubit<TripListState> {
  TripListCubit() : super(const TripListState.initial());

  Future<void> loadDays(BuildContext context, DateTime? fromDate, DateTime? toDate) async {
    emit(TripListState.loading());
    await AppDialog.checkAuth(context);
    List<Jiffy> days = [];
    Jiffy start = fromDate != null ? Jiffy.parseFromDateTime(fromDate) : Jiffy.now();
    Jiffy end = toDate != null ? Jiffy.parseFromDateTime(toDate) : Jiffy.now().add(days: 7);
    var duration = end.diff(start, unit: Unit.day);
    days.add(start);
    for (int i = 0; i < duration; i++) {
      days.add(days[i].add(days: 1));
    }
    emit(TripListState.loaded(days));
  }
}
