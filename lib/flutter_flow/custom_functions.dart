import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double? averagecost(
  List<double>? cost,
  List<double>? kgbag,
  List<int>? count,
) {
  if (cost == null ||
      cost.isEmpty ||
      count == null ||
      count.isEmpty ||
      kgbag == null ||
      kgbag.isEmpty) {
    return null;
  }
  double total_cost = 0;
  for (int i = 0; i < cost.length; i++) {
    total_cost = total_cost + (cost[i] * count[i] * kgbag[i]);
  }
  double total_kgs = 0;
  for (int i = 0; i < count.length; i++) {
    total_kgs = total_kgs + (count[i] * kgbag[i]);
  }
  return total_cost / total_kgs;
}

double? averagecostblends(
  List<double>? cost,
  List<double>? kgbag,
  List<double>? ratio,
) {
  if (cost == null ||
      cost.isEmpty ||
      kgbag == null ||
      kgbag.isEmpty ||
      ratio == null ||
      ratio.isEmpty) {
    return null;
  }
  double total_cost = 0;
  for (int i = 0; i < cost.length; i++) {
    total_cost = total_cost + (cost[i] * kgbag[i] * ratio[i]);
  }
  double total_kgs = 0;
  for (int i = 0; i < kgbag.length; i++) {
    total_kgs = total_kgs + (kgbag[i] * ratio[i]);
  }
  return total_cost / total_kgs;
}

double? totalInvestment(
  List<double>? cost,
  List<int>? count,
  List<double>? kgbag,
) {
  if (cost == null ||
      cost.isEmpty ||
      count == null ||
      count.isEmpty ||
      kgbag == null ||
      kgbag.isEmpty) {
    return null;
  }
  double total_cost = 0;
  for (int i = 0; i < cost.length; i++) {
    total_cost = total_cost + (cost[i] * count[i] * kgbag[i]);
  }
  return total_cost;
}

double? totakgsblend(
  List<int>? count,
  List<double>? kgbag,
  List<double>? ratio,
) {
  if (count == null ||
      count.isEmpty ||
      kgbag == null ||
      kgbag.isEmpty ||
      ratio == null ||
      ratio.isEmpty) {
    return null;
  }
  double total_kgs = 0;
  for (int i = 0; i < count.length; i++) {
    total_kgs = total_kgs + (count[i] * kgbag[i] * ratio[i]);
  }
  return total_kgs;
}

double? totakgsblendspecific(List<int>? kgbag) {
  if (kgbag == null || kgbag.isEmpty) {
    return null;
  }
  double total_kgs = 0;
  for (int i = 0; i < kgbag.length; i++) {
    total_kgs = total_kgs + kgbag[i];
  }
  return total_kgs;
}

double? totakgs(
  List<int>? count,
  List<double>? kgbag,
) {
  if (count == null || count.isEmpty || kgbag == null || kgbag.isEmpty) {
    return null;
  }
  double total_kgs = 0;
  for (int i = 0; i < count.length; i++) {
    total_kgs = total_kgs + (count[i] * kgbag[i]);
  }
  return total_kgs;
}
