import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/src/models/counsellor/counsellor.dart';
import 'package:sambhavya_package/src/modules/appointments/infra/repositories/counsellor_db_repository.dart';

final counsellorsProvider = FutureProvider<List<Counsellor>>((ref) async {
  return ref.read(counsellorDatabaseProvider).getCounsellors();
});
