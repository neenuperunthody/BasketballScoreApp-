//
//  MatchDetailsMockData.swift
//  Basketball Score App
//
//  Created by Neenu on 17/06/24.
//

import Foundation

let matchDataMock = """
{
"match_details": {
"id": "318q6nt6g457mo9",
"competition_id": "z318q6ntk53mo9j",
"home_team_id": "n54ql7teexnrvy9",
"away_team_id": "l5ergyt38z7r8k0",
"kind": 1,
"status_id": 2,
"match_time": 1718463600,
"neutral": 0,
"home_scores": [
2,
0,
0,
0,
0
],
"away_scores": [
3,
0,
0,
0,
0
],
"period_count": 4,
"season_id": "gy0or5gt42zqwzv",
"position": {
"home": "18",
"away": "14"
},
"updated_at": 1718462097,
"live": true,
"stats": [
[
1,
0,
1
],
[
2,
1,
0
],
[
3,
0,
0
],
[
4,
5,
5
],
[
5,
1,
0
],
[
6,
0,
0
],
[
7,
5,
5
]
],
"timeline": []
},
"away_team_detail": {
"id": "l5ergyt38z7r8k0",
"competition_id": "z318q6ntk53mo9j",
"country_id": "",
"conference_id": 0,
"name": "Spartans Distrito Capital",
"short_name": "",
"logo": "https://img.thesports.com/basketball/team/fd2cdbe594f824e39cbd58d14d78384c.png",
"national": 0,
"coach_id": "",
"venue_id": "",
"updated_at": 1684289134,
"name_zht": "首都斯巴達克斯",
"countryDetails": null
},
"home_team_detail": {
"id": "n54ql7teexnrvy9",
"competition_id": "z318q6ntk53mo9j",
"country_id": "",
"conference_id": 0,
"name": "Llaneros de Guarico",
"short_name": "Llaneros de Guarico",
"logo": "https://img.thesports.com/basketball/team/3fb4e45f682d4afb8d0b52ff1809407b.png",
"national": 0,
"coach_id": "",
"venue_id": "",
"updated_at": 1684289006,
"name_zht": "瓜里科大教堂",
"countryDetails": null
},
"season_details": {
"id": "gy0or5gt42zqwzv",
"competition_id": "z318q6ntk53mo9j",
"year": "2024",
"has_player_stats": 0,
"has_team_stats": 0,
"is_current": 1,
"updated_at": 1713808747
},
"tournament_details": {
"id": "z318q6ntk53mo9j",
"category_id": "ngy0or5gteqwzv3",
"country_id": "9dn1m17te9moepl",
"name": "Liga Profesional de Baloncesto",
"short_name": "LPB",
"logo": "https://img.thesports.com/basketball/competition/9d12516071fbd4708c30135d2ef6514a.png",
"type": 1,
"updated_at": 1713805778,
"name_zht": "委內聯"
},
"venue_details": {},
"live_match": 0
} 
""".data(using: .utf8)
