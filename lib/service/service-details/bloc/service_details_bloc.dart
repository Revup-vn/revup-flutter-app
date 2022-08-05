import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'service_details_bloc.freezed.dart';
part 'service_details_event.dart';
part 'service_details_state.dart';

class ServiceDetailsBloc
    extends Bloc<ServiceDetailsEvent, ServiceDetailsState> {
  ServiceDetailsBloc(
    this._serviceId,
    this._provider,
    this.storeRepository,
    this._providerId,
  ) : super(const _Initial()) {
    on<ServiceDetailsEvent>(_onEvent);
  }
  final String _serviceId;
  final String _providerId;
  final IStore<AppUser> _provider;
  final StoreRepository storeRepository;

  FutureOr<void> _onEvent(
    ServiceDetailsEvent event,
    Emitter<ServiceDetailsState> emit,
  ) async {
    await event.when(
      started: () async {},
    );
  }
}
