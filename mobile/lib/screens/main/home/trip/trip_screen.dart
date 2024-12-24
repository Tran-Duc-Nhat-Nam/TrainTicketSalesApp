import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/bloc/trip/trip_cubit.dart';
import 'package:mobile/models/station/station.dart';
import 'package:mobile/widgets/app_button.dart';
import 'package:mobile/widgets/app_card.dart';
import 'package:mobile/widgets/app_date_time_picker.dart';
import 'package:mobile/widgets/app_drop_down_menu.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:mobile/widgets/app_screen.dart';

import '../../../../widgets/app_loading_widget.dart';
import '../../../../widgets/state/app_state.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({super.key});

  @override
  AppState<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends AppState<TripScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripCubit>(
      create: (context) => TripCubit()..getStations(context),
      child: AppScreen(
        title: context.tr('journeyInformation'),
        child: BlocBuilder<TripCubit, TripState>(
          builder: (context, state) => state.when(
            initial: () => Container(),
            loading: () => AppLoadingWidget(),
            loaded: (stations) => FormBuilder(
              key: _formKey,
              onChanged: () => setState(() {}),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppCard(
                      titleText: context.tr('filter'),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          spacing: 18,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                              ),
                              child: Row(
                                spacing: 12,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          context.tr('departureStation'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8,
                                          ),
                                          child: AppDropDownMenu<Station>(
                                            name: 'departureStation',
                                            required: true,
                                            items: stations,
                                            itemAsString: (station) =>
                                                context.tr(
                                              "station",
                                              args: [station.name],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          _formKey.currentState?.instantValue[
                                                      'departureStation'] !=
                                                  null
                                              ? (_formKey.currentState
                                                              ?.instantValue[
                                                          'departureStation']
                                                      as Station)
                                                  .province
                                                  .name
                                              : '',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          context.tr('arrivalStation'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8,
                                          ),
                                          child: AppDropDownMenu<Station>(
                                            name: 'arrivalStation',
                                            required: true,
                                            items: stations,
                                            itemAsString: (station) =>
                                                context.tr(
                                              "station",
                                              args: [station.name],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          _formKey.currentState?.instantValue[
                                                          'arrivalStation'] !=
                                                      null &&
                                                  _formKey.currentState
                                                              ?.instantValue[
                                                          'arrivalStation']
                                                      is Station
                                              ? _formKey
                                                  .currentState
                                                  ?.instantValue[
                                                      'arrivalStation']
                                                  .province
                                                  .name
                                              : '',
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            AppDateTimePicker(
                              name: 'departureDateFrom',
                              firstDate: DateTime.now(),
                            ),
                            AppDateTimePicker(
                              name: 'departureDateTo',
                              firstDate: DateTime.now(),
                            ),
                            FormBuilderSwitch(
                              name: 'isReturn',
                              title: Text(context.tr('roundTrip')),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            if (_formKey
                                    .currentState?.instantValue['isReturn'] ==
                                true)
                              Column(
                                spacing: 18,
                                children: [
                                  AppDateTimePicker(
                                    name: 'departureDateFrom',
                                    firstDate: DateTime.now(),
                                  ),
                                  AppDateTimePicker(
                                    name: 'departureDateTo',
                                    firstDate: DateTime.now(),
                                  ),
                                ],
                              )
                          ],
                        ),
                      ),
                    ),
                    AppButton(
                      onPressed: () {
                        _formKey.currentState?.saveAndValidate();
                        if (_formKey.currentState!.validate()) {
                          context.push(
                            '/trip',
                            extra: _formKey.currentState?.value,
                          );
                        }
                      },
                      text: context.tr('search'),
                    )
                  ],
                ),
              ),
            ),
            loadFailed: (message) => AppErrorWidget(
              message: context.tr(message),
              onPressed: () => context.read<TripCubit>().getStations(context),
              buttonText: context.tr("reload"),
            ),
            searching: () => AppLoadingWidget(),
            searchFailed: (message) => Center(
              child: Text(
                context.tr(message),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
