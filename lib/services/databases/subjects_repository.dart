import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:school_life/models/subject.dart';
import 'package:school_life/services/databases/db_helper.dart';

@injectable
class SubjectsRepository {
  SubjectsRepository() {
    _subjectsDB = Hive.box(Databases.subjectsBox);
  }

  Box<Subject> _subjectsDB;

  int get nextID {
    if (subjects.isEmpty) {
      return 0;
    }
    final takenIDs = subjects.map((subject) => subject.id).toList();

    var id = 0;
    do {
      id++;
    } while (takenIDs.contains(id));
    return id;
  }

  List<Subject> get subjects {
    final data = _subjectsDB.values.toList();
    return data ?? <Subject>[];
  }

  Subject getSubject(int id) {
    return _subjectsDB.getAt(id);
  }

  List<Subject> get subjectsWithoutSchedule {
    return subjects.where((subject) => subject.schedule == null).toList();
  }

  List<Subject> get subjectsWithSchedule {
    return subjects.where((subject) => subject.schedule != null).toList();
  }

  List<Subject> getSubjectsWithSameDaySchedule(String dayOfWeek) {
    return subjectsWithSchedule
        .where((subject) => subject.schedule.containsKey(dayOfWeek))
        .toList();
  }

  Future<int> addSubject(Subject subject) {
    return _subjectsDB.add(subject);
  }
}
