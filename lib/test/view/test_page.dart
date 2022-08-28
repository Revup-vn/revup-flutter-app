import 'package:flutter/material.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../../h6_request_provider/widgets/request_details_live.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pData = ProviderData(
      id: 'asdasacasddddddddasdasdasdasd',
      fullName: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      address: '22-hsydas-SDasx-ASD',
      avatar: '',
      distance: 7,
      timeArrivalInMinute: 4,
      rating: 3,
      ratingCount: 107,
      backgroundImg: '',
      profileBio: '',
      phone: '098323123aaaaaaaaaaaaaaaaaaa',
    );
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [RequestDetailsLive(providerData: pData, movingFees: 50000)],
      ),
    );
  }
}
