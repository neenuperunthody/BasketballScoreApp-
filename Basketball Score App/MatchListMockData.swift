//
//  MatchListMockData.swift
//  Basketball Score App
//
//  Created by Neenu on 16/06/24.
//

import Foundation

let mockData = """
        {
            "currentPage": 1,
            "totalPages": 1,
            "matchList": [
                {
                    "match": [
                        {
                            "id": "x7lm73t37wevr2w",
                            "score": [5 items],
                            "timer": [4 items],
                            "stats": [],
                            "details": {7 items}
                        }
                    ],
                    "tournament_name": "Club Friendship"
                },
                {
                    "match": [
                        {
                            "id": "y0or5gtzo38zqwz",
                            "score": [
                                "y0or5gtzo38zqwz",
                                4,
                                113,
                                [
                                    20,
                                    22,
                                    0,
                                    0,
                                    0
                                ],
                                [
                                    22,
                                    15,
                                    0,
                                    0,
                                    0
                                ]
                            ],
                            "timer": [
                                0,
                                1,
                                1718391549,
                                113
                            ],
                            "stats": [
                                [
                                    1,
                                    4,
                                    4
                                ],
                                [
                                    2,
                                    11,
                                    8
                                ],
                                [
                                    3,
                                    8,
                                    7
                                ],
                                [
                                    4,
                                    4,
                                    3
                                ],
                                [
                                    5,
                                    2,
                                    5
                                ],
                                [
                                    6,
                                    66.7,
                                    77.8
                                ],
                                [
                                    7,
                                    5,
                                    5
                                ]
                            ],
                            "details": {
                                "match_details": {
                                    "id": "y0or5gtzo38zqwz",
                                    "competition_id": "6j1l4rjzt3m7vx5",
                                    "home_team_id": "yl5ergytjkwr8k0",
                                    "away_team_id": "j1l4rjztp9zm7vx",
                                    "kind": 2,
                                    "status_id": 4,
                                    "match_time": 1718388900,
                                    "neutral": 0,
                                    "home_scores": [
                                        20,
                                        22,
                                        0,
                                        0,
                                        0
                                    ],
                                    "away_scores": [
                                        22,
                                        15,
                                        0,
                                        0,
                                        0
                                    ],
                                    "period_count": 4,
                                    "season_id": "p3glrwyt120qdyj",
                                    "position": {
                                        "home": "1",
                                        "away": "2"
                                    },
                                    "updated_at": 1718391537,
                                    "live": true,
                                    "stats": [
                                        [
                                            1,
                                            4,
                                            4
                                        ],
                                        [
                                            2,
                                            11,
                                            8
                                        ],
                                        [
                                            3,
                                            8,
                                            7
                                        ],
                                        [
                                            4,
                                            4,
                                            3
                                        ],
                                        [
                                            5,
                                            2,
                                            5
                                        ],
                                        [
                                            6,
                                            66.7,
                                            77.8
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
                                    "id": "j1l4rjztp9zm7vx",
                                    "competition_id": "6j1l4rjzt3m7vx5",
                                    "country_id": "156ypq3kt2md7oj",
                                    "conference_id": 0,
                                    "name": "Olympiacos Piraeus",
                                    "short_name": "Olympiacos",
                                    "logo": "https://img.thesports.com/basketball/team/c6ca39bb1448bda50a636d359d106e81.png",
                                    "national": 0,
                                    "coach_id": "",
                                    "venue_id": "",
                                    "updated_at": 1698693244,
                                    "name_zht": "奧林比亞高斯",
                                    "countryDetails": {
                                        "id": "156ypq3kt2md7oj",
                                        "category_id": "0gx7lm73tor2wdk",
                                        "name": "Greece",
                                        "logo": "https://img.thesports.com/football/country/f82d905aa12fee366b4e916e5b7517e9.png",
                                        "updated_at": 1559108677,
                                        "zh_name": "希臘"
                                    }
                                },
                                "home_team_detail": {
                                    "id": "yl5ergytjkwr8k0",
                                    "competition_id": "6j1l4rjzt3m7vx5",
                                    "country_id": "156ypq3kt2md7oj",
                                    "conference_id": 0,
                                    "name": "Panathinaikos",
                                    "short_name": "NAO",
                                    "logo": "https://img.thesports.com/basketball/team/6da038231edd3b76b1fec5446b7af6e3.png",
                                    "national": 0,
                                    "coach_id": "",
                                    "venue_id": "",
                                    "updated_at": 1698693227,
                                    "name_zht": "彭拿典奈高斯",
                                    "countryDetails": {
                                        "id": "156ypq3kt2md7oj",
                                        "category_id": "0gx7lm73tor2wdk",
                                        "name": "Greece",
                                        "logo": "https://img.thesports.com/football/country/f82d905aa12fee366b4e916e5b7517e9.png",
                                        "updated_at": 1559108677,
                                        "zh_name": "希臘"
                                    }
                                },
                                "season_details": {
                                    "id": "p3glrwyt120qdyj",
                                    "competition_id": "6j1l4rjzt3m7vx5",
                                    "year": "2023-2024",
                                    "has_player_stats": 0,
                                    "has_team_stats": 0,
                                    "is_current": 1,
                                    "updated_at": 1694617145
                                },
                                "tournament_details": {
                                    "id": "6j1l4rjzt3m7vx5",
                                    "category_id": "0gx7lm73tor2wdk",
                                    "country_id": "156ypq3kt2md7oj",
                                    "name": "Greek Basket League",
                                    "short_name": "A1 Ethniki",
                                    "logo": "https://img.thesports.com/basketball/competition/615ac229b911df3398dfc19ff3b605d2.png",
                                    "type": 1,
                                    "updated_at": 1694614317,
                                    "name_zht": "希臘籃球甲級聯賽"
                                },
                                "venue_details": {},
                                "live_match": 0
                            }
                        }
                    ],
                    "tournament_name": "Greek Basket League"
                },
                {
                    "match": [
                        {
                            "id": "y0or5gtzo3k2qwz",
                            "score": [
                                "y0or5gtzo3k2qwz",
                                6,
                                450,
                                [
                                    21,
                                    19,
                                    6,
                                    0,
                                    0
                                ],
                                [
                                    20,
                                    22,
                                    6,
                                    0,
                                    0
                                ]
                            ],
                            "timer": [
                                1,
                                1,
                                1718391636,
                                450
                            ],
                            "stats": [
                                [
                                    1,
                                    5,
                                    3
                                ],
                                [
                                    2,
                                    15,
                                    15
                                ],
                                [
                                    3,
                                    1,
                                    7
                                ],
                                [
                                    4,
                                    3,
                                    4
                                ],
                                [
                                    5,
                                    1,
                                    2
                                ],
                                [
                                    6,
                                    50,
                                    77.8
                                ],
                                [
                                    7,
                                    4,
                                    4
                                ]
                            ],
                            "details": {
                                "match_details": {
                                    "id": "y0or5gtzo3k2qwz",
                                    "competition_id": "e4wyrn1tnoq86pv",
                                    "home_team_id": "n54ql7te70drvy9",
                                    "away_team_id": "e4wyrn1t3z2q86p",
                                    "kind": 0,
                                    "status_id": 6,
                                    "match_time": 1718388000,
                                    "neutral": 0,
                                    "home_scores": [
                                        21,
                                        19,
                                        6,
                                        0,
                                        0
                                    ],
                                    "away_scores": [
                                        20,
                                        22,
                                        3,
                                        0,
                                        0
                                    ],
                                    "period_count": 4,
                                    "position": {
                                        "home": "1",
                                        "away": "15"
                                    },
                                    "updated_at": 1718391613,
                                    "live": true,
                                    "stats": [
                                        [
                                            1,
                                            5,
                                            3
                                        ],
                                        [
                                            2,
                                            15,
                                            15
                                        ],
                                        [
                                            3,
                                            1,
                                            7
                                        ],
                                        [
                                            4,
                                            3,
                                            4
                                        ],
                                        [
                                            5,
                                            1,
                                            2
                                        ],
                                        [
                                            6,
                                            50,
                                            77.8
                                        ],
                                        [
                                            7,
                                            4,
                                            4
                                        ]
                                    ],
                                    "timeline": []
                                },
                                "away_team_detail": {
                                    "id": "e4wyrn1t3z2q86p",
                                    "competition_id": "jednm9kt9xryox8",
                                    "country_id": "9d23xmv1t4mg8ny",
                                    "conference_id": 0,
                                    "name": "Saint Vallier",
                                    "short_name": "Saint Vallier",
                                    "logo": "https://img.thesports.com/basketball/team/d5da222ebd57ce324130f623a9e4dc44.png",
                                    "national": 0,
                                    "coach_id": "",
                                    "venue_id": "",
                                    "updated_at": 1697699597,
                                    "name_zht": "聖瓦利耶",
                                    "countryDetails": {
                                        "id": "9d23xmv1t4mg8ny",
                                        "category_id": "0gx7lm73tor2wdk",
                                        "name": "France",
                                        "logo": "https://img.thesports.com/football/country/c04cb81c471892e7543a331578ce424d.png",
                                        "updated_at": 1559108671,
                                        "zh_name": "法國"
                                    }
                                },
                                "home_team_detail": {
                                    "id": "n54ql7te70drvy9",
                                    "competition_id": "",
                                    "country_id": "",
                                    "conference_id": 0,
                                    "name": "Cean Basket Calvados",
                                    "short_name": "",
                                    "logo": "https://img.thesports.com/basketball/team/89f5c4701f900c1231cf51c8c5fefa8b.png",
                                    "national": 0,
                                    "coach_id": "",
                                    "venue_id": "",
                                    "updated_at": 1612278566,
                                    "name_zht": "",
                                    "countryDetails": null
                                },
                                "season_details": {},
                                "tournament_details": {
                                    "id": "e4wyrn1tnoq86pv",
                                    "category_id": "0gx7lm73tor2wdk",
                                    "country_id": "9d23xmv1t4mg8ny",
                                    "name": "France Nationale 1",
                                    "short_name": "France FNB1",
                                    "logo": "https://img.thesports.com/basketball/competition/3afa4a7755c9c9c5aae7693e1202c683.png",
                                    "type": 1,
                                    "updated_at": 1692007111,
                                    "name_zht": "法國Nationale 1"
                                },
                                "venue_details": {},
                                "live_match": 0
                            }
                        }
                    ],
                    "tournament_name": "France Nationale 1"
                },
                {
                    "match": [
                        {
                            "id": "n54ql7tpz86lrvy",
                            "score": [
                                "n54ql7tpz86lrvy",
                                4,
                                27,
                                [
                                    27,
                                    21,
                                    0,
                                    0,
                                    0
                                ],
                                [
                                    25,
                                    14,
                                    0,
                                    0,
                                    0
                                ]
                            ],
                            "timer": [
                                0,
                                1,
                                1718391636,
                                27
                            ],
                            "stats": [
                                [
                                    1,
                                    8,
                                    8
                                ],
                                [
                                    2,
                                    9,
                                    6
                                ],
                                [
                                    3,
                                    3,
                                    3
                                ],
                                [
                                    4,
                                    4,
                                    3
                                ],
                                [
                                    5,
                                    4,
                                    4
                                ],
                                [
                                    6,
                                    50,
                                    60
                                ],
                                [
                                    7,
                                    6,
                                    6
                                ]
                            ],
                            "details": {
                                "match_details": {
                                    "id": "n54ql7tpz86lrvy",
                                    "competition_id": "4zp5rzkt24yr82w",
                                    "home_team_id": "k82re8t9lewrepz",
                                    "away_team_id": "p4jwq25tlowq0ve",
                                    "kind": 0,
                                    "status_id": 4,
                                    "match_time": 1718388000,
                                    "neutral": 0,
                                    "home_scores": [
                                        27,
                                        18,
                                        0,
                                        0,
                                        0
                                    ],
                                    "away_scores": [
                                        25,
                                        14,
                                        0,
                                        0,
                                        0
                                    ],
                                    "period_count": 4,
                                    "updated_at": 1718391426,
                                    "live": true,
                                    "stats": [
                                        [
                                            1,
                                            8,
                                            8
                                        ],
                                        [
                                            2,
                                            9,
                                            6
                                        ],
                                        [
                                            3,
                                            3,
                                            3
                                        ],
                                        [
                                            4,
                                            4,
                                            3
                                        ],
                                        [
                                            5,
                                            4,
                                            4
                                        ],
                                        [
                                            6,
                                            50,
                                            60
                                        ],
                                        [
                                            7,
                                            6,
                                            6
                                        ]
                                    ],
                                    "timeline": []
                                },
                                "away_team_detail": {
                                    "id": "p4jwq25tlowq0ve",
                                    "competition_id": "9vjxm8xtl5q6odg",
                                    "country_id": "4zp5rzkt71r82w1",
                                    "conference_id": 0,
                                    "name": "Philadelphia University",
                                    "short_name": "Philadelphia",
                                    "logo": "https://img.thesports.com/basketball/team/d9184ae9e4430e3e47259d77c3bca0f5.png",
                                    "national": 0,
                                    "coach_id": "",
                                    "venue_id": "",
                                    "updated_at": 1717047051,
                                    "name_zht": "費城聖經大學",
                                    "countryDetails": {
                                        "id": "4zp5rzkt71r82w1",
                                        "category_id": "ngy0or5gteqwzv3",
                                        "name": "United States",
                                        "logo": "https://img.thesports.com/football/country/c0209e5502baf617931c34360dda75eb.png",
                                        "updated_at": 1559108674,
                                        "zh_name": "美國"
                                    }
                                },
                                "home_team_detail": {
                                    "id": "k82re8t9lewrepz",
                                    "competition_id": "",
                                    "country_id": "",
                                    "conference_id": 0,
                                    "name": "Gerasa",
                                    "short_name": "",
                                    "logo": "https://img.thesports.com/basketball/team/d5a0a3cbfb9cfc4783cce2a6c8ff6605.png",
                                    "national": 0,
                                    "coach_id": "",
                                    "venue_id": "",
                                    "updated_at": 1716783066,
                                    "name_zht": null,
                                    "countryDetails": null
                                },
                                "season_details": {},
                                "tournament_details": {
                                    "id": "4zp5rzkt24yr82w",
                                    "category_id": "",
                                    "country_id": "jednm9ktzxryox8",
                                    "name": "Jordan Basketball Championship \" LEAGUE OF TALENTS \"",
                                    "short_name": "CFI",
                                    "logo": "https://img.thesports.com/basketball/competition/710b1ac97f49544e1d3c6ac239943a68.png",
                                    "type": 0,
                                    "updated_at": 1718070609,
                                    "name_zht": null
                                },
                                "venue_details": {},
                                "live_match": 0
                            }
                        }
                    ],
                    "tournament_name": "Jordan Basketball Championship \" LEAGUE OF TALENTS \""
                }
            ]
        }
        """.data(using: .utf8)!
