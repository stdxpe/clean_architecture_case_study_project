import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:case_study_clean_architecture_project/features/home/data/models/pagination_dto/pagination_dto.dart';

part 'pagination.freezed.dart';

/// Immutable and type-safe Core-level Domain Entity for [Pagination].
/// API-specific transformations and parsing handled at feature-level [PaginationDto].

@freezed
sealed class Pagination with _$Pagination {
  const factory Pagination({
    required int totalCount,
    required int perPage,
    required int maxPage,
    required int currentPage,
  }) = _Pagination;

  factory Pagination.initial() => const Pagination(
    currentPage: 1,
    maxPage: 1,
    perPage: 1,
    totalCount: 1,
  );
}
