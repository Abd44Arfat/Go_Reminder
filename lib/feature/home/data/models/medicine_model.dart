

import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';


part 'medicine_model.g.dart' ;


@HiveType(typeId: 0)
class MedicineModel extends HiveObject{

@HiveField(0)
final String title;
@HiveField(1)

final String amount;
@HiveField(2)

final String image;
@HiveField(3)

final String befireAndAfter;
@HiveField(5)
  final DateTime notificationTime;
  @HiveField(6)

int id;






 MedicineModel({
    required this.image,
    required this.amount,
  
    required this.title,
    required this.befireAndAfter,
    required this.notificationTime,
   required this.id
  }) ;


}