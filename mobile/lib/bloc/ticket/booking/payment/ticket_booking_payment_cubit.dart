import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_booking_payment_state.dart';
part 'ticket_booking_payment_cubit.freezed.dart';

class TicketBookingPaymentCubit extends Cubit<TicketBookingPaymentState> {
  TicketBookingPaymentCubit() : super(const TicketBookingPaymentState.initial());
}
