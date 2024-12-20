import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/ticket/ticket.dart';

part 'ticket_booking_ticket_state.dart';
part 'ticket_booking_ticket_cubit.freezed.dart';

class TicketBookingTicketCubit extends Cubit<TicketBookingTicketState> {
  TicketBookingTicketCubit() : super(const TicketBookingTicketState.initial());
}
