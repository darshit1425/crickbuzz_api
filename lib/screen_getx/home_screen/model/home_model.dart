// To parse this JSON data, do
//
//     final CrickbuzzModel = CrickbuzzModelFromJson(jsonString);

import 'dart:convert';

CrickbuzzModel CrickbuzzModelFromJson(String str) => CrickbuzzModel.fromJson(json.decode(str));

String CrickbuzzModelToJson(CrickbuzzModel data) => json.encode(data.toJson());

class CrickbuzzModel {
  List<TypeMatch>? typeMatches;
  Filters? filters;
  AppIndex? appIndex;
  String? responseLastUpdated;

  CrickbuzzModel({
    this.typeMatches,
    this.filters,
    this.appIndex,
    this.responseLastUpdated,
  });

  factory CrickbuzzModel.fromJson(Map<String, dynamic> json) => CrickbuzzModel(
    typeMatches: json["typeMatches"] == null ? [] : List<TypeMatch>.from(json["typeMatches"]!.map((x) => TypeMatch.fromJson(x))),
    filters: json["filters"] == null ? null : Filters.fromJson(json["filters"]),
    appIndex: json["appIndex"] == null ? null : AppIndex.fromJson(json["appIndex"]),
    responseLastUpdated: json["responseLastUpdated"],
  );

  Map<String, dynamic> toJson() => {
    "typeMatches": typeMatches == null ? [] : List<dynamic>.from(typeMatches!.map((x) => x.toJson())),
    "filters": filters?.toJson(),
    "appIndex": appIndex?.toJson(),
    "responseLastUpdated": responseLastUpdated,
  };
}

class AppIndex {
  String? seoTitle;
  String? webUrl;

  AppIndex({
    this.seoTitle,
    this.webUrl,
  });

  factory AppIndex.fromJson(Map<String, dynamic> json) => AppIndex(
    seoTitle: json["seoTitle"],
    webUrl: json["webURL"],
  );

  Map<String, dynamic> toJson() => {
    "seoTitle": seoTitle,
    "webURL": webUrl,
  };
}

class Filters {
  List<String>? matchType;

  Filters({
    this.matchType,
  });

  factory Filters.fromJson(Map<String, dynamic> json) => Filters(
    matchType: json["matchType"] == null ? [] : List<String>.from(json["matchType"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "matchType": matchType == null ? [] : List<dynamic>.from(matchType!.map((x) => x)),
  };
}

class TypeMatch {
  String? matchType;
  List<SeriesMatch>? seriesMatches;

  TypeMatch({
    this.matchType,
    this.seriesMatches,
  });

  factory TypeMatch.fromJson(Map<String, dynamic> json) => TypeMatch(
    matchType: json["matchType"],
    seriesMatches: json["seriesMatches"] == null ? [] : List<SeriesMatch>.from(json["seriesMatches"]!.map((x) => SeriesMatch.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "matchType": matchType,
    "seriesMatches": seriesMatches == null ? [] : List<dynamic>.from(seriesMatches!.map((x) => x.toJson())),
  };
}

class SeriesMatch {
  SeriesAdWrapper? seriesAdWrapper;
  AdDetail? adDetail;

  SeriesMatch({
    this.seriesAdWrapper,
    this.adDetail,
  });

  factory SeriesMatch.fromJson(Map<String, dynamic> json) => SeriesMatch(
    seriesAdWrapper: json["seriesAdWrapper"] == null ? null : SeriesAdWrapper.fromJson(json["seriesAdWrapper"]),
    adDetail: json["adDetail"] == null ? null : AdDetail.fromJson(json["adDetail"]),
  );

  Map<String, dynamic> toJson() => {
    "seriesAdWrapper": seriesAdWrapper?.toJson(),
    "adDetail": adDetail?.toJson(),
  };
}

class AdDetail {
  String? name;
  String? layout;
  int? position;

  AdDetail({
    this.name,
    this.layout,
    this.position,
  });

  factory AdDetail.fromJson(Map<String, dynamic> json) => AdDetail(
    name: json["name"],
    layout: json["layout"],
    position: json["position"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "layout": layout,
    "position": position,
  };
}

class SeriesAdWrapper {
  int? seriesId;
  String? seriesName;
  List<Match>? matches;

  SeriesAdWrapper({
    this.seriesId,
    this.seriesName,
    this.matches,
  });

  factory SeriesAdWrapper.fromJson(Map<String, dynamic> json) => SeriesAdWrapper(
    seriesId: json["seriesId"],
    seriesName: json["seriesName"],
    matches: json["matches"] == null ? [] : List<Match>.from(json["matches"]!.map((x) => Match.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "seriesId": seriesId,
    "seriesName": seriesName,
    "matches": matches == null ? [] : List<dynamic>.from(matches!.map((x) => x.toJson())),
  };
}

class Match {
  MatchInfo? matchInfo;
  MatchScore? matchScore;

  Match({
    this.matchInfo,
    this.matchScore,
  });

  factory Match.fromJson(Map<String, dynamic> json) => Match(
    matchInfo: json["matchInfo"] == null ? null : MatchInfo.fromJson(json["matchInfo"]),
    matchScore: json["matchScore"] == null ? null : MatchScore.fromJson(json["matchScore"]),
  );

  Map<String, dynamic> toJson() => {
    "matchInfo": matchInfo?.toJson(),
    "matchScore": matchScore?.toJson(),
  };
}

class MatchInfo {
  int? matchId;
  int? seriesId;
  String? seriesName;
  String? matchDesc;
  MatchFormat? matchFormat;
  String? startDate;
  String? endDate;
  // State? state;
  String? status;
  Team? team1;
  Team? team2;
  VenueInfo? venueInfo;
  int? currBatTeamId;
  String? seriesStartDt;
  String? seriesEndDt;
  bool? isTimeAnnounced;
  String? stateTitle;
  bool? isFantasyEnabled;

  MatchInfo({
    this.matchId,
    this.seriesId,
    this.seriesName,
    this.matchDesc,
    this.matchFormat,
    this.startDate,
    this.endDate,
    // this.state,
    this.status,
    this.team1,
    this.team2,
    this.venueInfo,
    this.currBatTeamId,
    this.seriesStartDt,
    this.seriesEndDt,
    this.isTimeAnnounced,
    this.stateTitle,
    this.isFantasyEnabled,
  });

  factory MatchInfo.fromJson(Map<String, dynamic> json) => MatchInfo(
    matchId: json["matchId"],
    seriesId: json["seriesId"],
    seriesName: json["seriesName"],
    matchDesc: json["matchDesc"],
    matchFormat: matchFormatValues.map[json["matchFormat"]]!,
    startDate: json["startDate"],
    endDate: json["endDate"],
    // state: stateValues.map[json["state"]]!,
    status: json["status"],
    team1: json["team1"] == null ? null : Team.fromJson(json["team1"]),
    team2: json["team2"] == null ? null : Team.fromJson(json["team2"]),
    venueInfo: json["venueInfo"] == null ? null : VenueInfo.fromJson(json["venueInfo"]),
    currBatTeamId: json["currBatTeamId"],
    seriesStartDt: json["seriesStartDt"],
    seriesEndDt: json["seriesEndDt"],
    isTimeAnnounced: json["isTimeAnnounced"],
    stateTitle: json["stateTitle"],
    isFantasyEnabled: json["isFantasyEnabled"],
  );

  Map<String, dynamic> toJson() => {
    "matchId": matchId,
    "seriesId": seriesId,
    "seriesName": seriesName,
    "matchDesc": matchDesc,
    "matchFormat": matchFormatValues.reverse[matchFormat],
    "startDate": startDate,
    "endDate": endDate,
    // "state": stateValues.reverse[state],
    "status": status,
    "team1": team1?.toJson(),
    "team2": team2?.toJson(),
    "venueInfo": venueInfo?.toJson(),
    "currBatTeamId": currBatTeamId,
    "seriesStartDt": seriesStartDt,
    "seriesEndDt": seriesEndDt,
    "isTimeAnnounced": isTimeAnnounced,
    "stateTitle": stateTitle,
    "isFantasyEnabled": isFantasyEnabled,
  };
}

enum MatchFormat {
  HUN,
  ODI,
  T20,
  TEST
}

final matchFormatValues = EnumValues({
  "HUN": MatchFormat.HUN,
  "ODI": MatchFormat.ODI,
  "T20": MatchFormat.T20,
  "TEST": MatchFormat.TEST
});

enum State {
  COMPLETE
}

final stateValues = EnumValues({
  "Complete": State.COMPLETE
});

class Team {
  int? teamId;
  String? teamName;
  String? teamSName;
  int? imageId;

  Team({
    this.teamId,
    this.teamName,
    this.teamSName,
    this.imageId,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    teamId: json["teamId"],
    teamName: json["teamName"],
    teamSName: json["teamSName"],
    imageId: json["imageId"],
  );

  Map<String, dynamic> toJson() => {
    "teamId": teamId,
    "teamName": teamName,
    "teamSName": teamSName,
    "imageId": imageId,
  };
}

class VenueInfo {
  int? id;
  String? ground;
  String? city;
  Timezone? timezone;
  String? latitude;
  String? longitude;

  VenueInfo({
    this.id,
    this.ground,
    this.city,
    this.timezone,
    this.latitude,
    this.longitude,
  });

  factory VenueInfo.fromJson(Map<String, dynamic> json) => VenueInfo(
    id: json["id"],
    ground: json["ground"],
    city: json["city"],
    timezone: timezoneValues.map[json["timezone"]]!,
    latitude: json["latitude"],
    longitude: json["longitude"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "ground": ground,
    "city": city,
    "timezone": timezoneValues.reverse[timezone],
    "latitude": latitude,
    "longitude": longitude,
  };
}

enum Timezone {
  THE_0100,
  THE_0200,
  THE_0400,
  THE_0500,
  THE_0530,
  THE_0600,
  THE_0800,
  THE_1000
}

final timezoneValues = EnumValues({
  "+01:00": Timezone.THE_0100,
  "+02:00": Timezone.THE_0200,
  "-04:00": Timezone.THE_0400,
  "-05:00": Timezone.THE_0500,
  "+05:30": Timezone.THE_0530,
  "+06:00": Timezone.THE_0600,
  "+08:00": Timezone.THE_0800,
  "+10:00": Timezone.THE_1000
});

class MatchScore {
  TeamScore? team1Score;
  TeamScore? team2Score;

  MatchScore({
    this.team1Score,
    this.team2Score,
  });

  factory MatchScore.fromJson(Map<String, dynamic> json) => MatchScore(
    team1Score: json["team1Score"] == null ? null : TeamScore.fromJson(json["team1Score"]),
    team2Score: json["team2Score"] == null ? null : TeamScore.fromJson(json["team2Score"]),
  );

  Map<String, dynamic> toJson() => {
    "team1Score": team1Score?.toJson(),
    "team2Score": team2Score?.toJson(),
  };
}

class TeamScore {
  Inngs? inngs1;
  Inngs? inngs2;

  TeamScore({
    this.inngs1,
    this.inngs2,
  });

  factory TeamScore.fromJson(Map<String, dynamic> json) => TeamScore(
    inngs1: json["inngs1"] == null ? null : Inngs.fromJson(json["inngs1"]),
    inngs2: json["inngs2"] == null ? null : Inngs.fromJson(json["inngs2"]),
  );

  Map<String, dynamic> toJson() => {
    "inngs1": inngs1?.toJson(),
    "inngs2": inngs2?.toJson(),
  };
}

class Inngs {
  int? inningsId;
  int? runs;
  int? wickets;
  double? overs;
  bool? isDeclared;
  bool? isFollowOn;

  Inngs({
    this.inningsId,
    this.runs,
    this.wickets,
    this.overs,
    this.isDeclared,
    this.isFollowOn,
  });

  factory Inngs.fromJson(Map<String, dynamic> json) => Inngs(
    inningsId: json["inningsId"],
    runs: json["runs"],
    wickets: json["wickets"],
    overs: json["overs"]?.toDouble(),
    isDeclared: json["isDeclared"],
    isFollowOn: json["isFollowOn"],
  );

  Map<String, dynamic> toJson() => {
    "inningsId": inningsId,
    "runs": runs,
    "wickets": wickets,
    "overs": overs,
    "isDeclared": isDeclared,
    "isFollowOn": isFollowOn,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
