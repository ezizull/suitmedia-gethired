import 'user.model.dart';
import 'support.model.dart';

class Pagination {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final List<User> data;
  final Support support;

  Pagination({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    this.data = const [],
    required this.support,
  });

  factory Pagination.fromMap(Map<String, dynamic> json) {
    return Pagination(
      page: json["page"],
      perPage: json["per_page"],
      total: json["total"],
      totalPages: json["total_pages"],
      data: List<User>.from(json["data"].map((x) => User.fromMap(x))),
      support: Support.fromMap(json["support"]),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "page": page,
      "per_page": perPage,
      "total": total,
      "total_pages": totalPages,
      "data": List<dynamic>.from(data.map((x) => x.toMap())),
      "support": support.toMap(),
    };
  }
}
