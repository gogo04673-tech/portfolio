import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/core/config/assets/app_json.dart';
import 'package:portfolio/core/errors/app_error.dart';

abstract class MyWorksServices {
  Future<Either<AppError, List<Map<String, dynamic>>>> getWorks();
}

class MyWorksServicesImpl implements MyWorksServices {
  @override
  Future<Either<AppError, List<Map<String, dynamic>>>> getWorks() async {
    try {
      final result = await rootBundle.loadString(AppJson.myWorks);

      if (result.isEmpty) {
        return Left(AppError(errorMsg: "NOT_FOUND_DATA", statusText: 'FAIL'));
      }

      final List<dynamic> decoded = json.decode(result);

      final data = decoded.cast<Map<String, dynamic>>();

      return Right(data);
    } catch (error) {
      return Left(
        AppError(
          errorMsg: "FAILED_TO_LOAD_WORKS",
          statusText: "ERROR",
          data: error,
        ),
      );
    }
  }
}
