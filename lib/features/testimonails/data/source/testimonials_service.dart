import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/core/config/assets/app_json.dart';
import 'package:portfolio/core/errors/app_error.dart';

abstract class TestimonialsService {
  Future<Either<AppError, List<Map<String, dynamic>>>> getTestimonials();
}

class TestimonialsServiceImp extends TestimonialsService {
  @override
  Future<Either<AppError, List<Map<String, dynamic>>>> getTestimonials() async {
    try {
      final result = await rootBundle.loadString(AppJson.testimonials);

      if (result.isEmpty) {
        return Left(AppError(errorMsg: "NOT_FOUND_DATA", statusText: 'FAIL'));
      }

      final List<dynamic> decoded = json.decode(result);

      final data = decoded.cast<Map<String, dynamic>>();

      return Right(data);
    } catch (error) {
      return Left(
        AppError(
          errorMsg: "FAILED_TO_LOAD_TESTIMONIALS",
          statusText: "ERROR",
          data: error,
        ),
      );
    }
  }
}
