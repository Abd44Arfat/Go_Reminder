

import 'package:hive/hive.dart';


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
final String date;
@HiveField(4)
final String befireAndAfter;






  MedicineModel({ required this.image, required this.amount, required this.date, required this.title,required this.befireAndAfter,  });

}