import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/ticket/ticket.dart';

part 'ticket_booking_bill_state.dart';
part 'ticket_booking_bill_cubit.freezed.dart';

class TicketBookingBillCubit extends Cubit<TicketBookingBillState> {
  TicketBookingBillCubit() : super(const TicketBookingBillState.initial());
}
