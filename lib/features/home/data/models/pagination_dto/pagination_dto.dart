import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/entities/pagination/pagination.dart';

part 'pagination_dto.freezed.dart';
part 'pagination_dto.g.dart';

/// Immutable Feature-Level DTO to represent pagination metadata provided by API.

@freezed
abstract class PaginationDto with _$PaginationDto {
  const PaginationDto._();

  const factory PaginationDto({
    required int totalCount,
    required int perPage,
    required int maxPage,
    @Default(1) int currentPage,
  }) = _PaginationDto;

  factory PaginationDto.fromJson(Map<String, dynamic> json) =>
      _$PaginationDtoFromJson(json);

  Pagination toEntity() => Pagination(
    totalCount: totalCount,
    perPage: perPage,
    maxPage: maxPage,
    currentPage: currentPage,
  );
}
