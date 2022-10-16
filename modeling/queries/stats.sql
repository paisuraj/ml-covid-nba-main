select active_roster.game_date as game_date,
    active_roster.TEAM,
    active_roster.PLAYER_ID,
    team_stats."W/L%" as "W/L%",
    team_stats.MOV as "MOV",
    team_stats.ORTG as "ORTG",
    team_stats.DRTG as "DRTG",
    team_stats.NRTG as "NRTG",
    team_stats."MOV/A" as "MOV/A",
    team_stats."ORtg/A" as "ORtg/A",
    team_stats."DRtg/A" as "DRtg/A",
    team_stats."NRtg/A" as "NRtg/A",
player_stats.eFG as "eFG",
player_stats.TS as "TS",
player_stats.FTr as "FTr",
player_stats."3PAr" as "3PAr",
player_stats."FG+" as "FG+",
player_stats."2P+" as "2P+",
player_stats."3P+" as "3P+",
player_stats."eFG+" as "eFG+",
player_stats."FT+" as "FT+",
player_stats."TS+" as "TS+",
player_stats."FTr+" as "FTr+",
player_stats."3PAr+" as "3PAr+",
player_stats.FG_Add as "FG_Add",
player_stats.TS_Add as "TS_Add",
player_stats.PER as "PER",
player_stats."TS%" as "TS%",
player_stats."ORB%" as "ORB%",
player_stats."DRB%" as "DRB%",
player_stats."TRB%" as "TRB%",
player_stats."AST%" as "AST%",
player_stats."STL%" as "STL%",
player_stats."BLK%" as "BLK%",
player_stats."TOV%" as "TOV%",
player_stats."USG%" as "USG%",
player_stats.OWS as "OWS",
player_stats.DWS as "DWS",
player_stats.WS as "WS",
player_stats."WS/48" as "WS/48",
player_stats.OBPM as "OBPM",
player_stats.DBPM as "DBPM",
player_stats.BPM as "BPM",
player_stats.VORP as "VORP",
player_stats.FG as "FG",
player_stats.FGA as "FGA",
player_stats."FG%" as "FG%",
player_stats."3P" as "3P",
player_stats."3PA" as "3PA",
player_stats."3P%" as "3P%",
player_stats."2P" as "2P",
player_stats."2PA" as "2PA",
player_stats."2P%" as "2P%",
player_stats."eFG%" as "eFG%",
player_stats."FT" as "FT",
player_stats."FTA" as "FTA",
player_stats."FT%" as "FT%",
player_stats."ORB" as "ORB",
player_stats."DRB" as "DRB",
player_stats."TRB" as "TRB",
player_stats."AST" as "AST",
player_stats."STL" as "STL",
player_stats."BLK" as "BLK",
player_stats."TOV" as "TOV",
player_stats."PF" as "PF",
player_stats."PTS" as "PTS",
player_stats."PE_PG%" as "PE_PG%",
player_stats."PE_SG%" as "PE_SG%",
player_stats."PE_SF%" as "PE_SF%",
player_stats."PE_PF%" as "PE_PF%",
player_stats."PE_C%" as "PE_C%",
player_stats."+/-_OnCourt" as "+/-_OnCourt",
player_stats."+/-_On-Off" as "+/-_On-Off",
player_stats.TO_BadPass as "TO_BadPass",
player_stats.TO_LostBall as "TO_LostBall",
player_stats.Shoot_Fl_Com as "Shoot_Fl_Com",
player_stats."Off._Fl_Com" as "Off._Fl_Com",
player_stats.Shoot_Fl_Drn as "Shoot_Fl_Drn",
player_stats."Off._Fl_Drn" as "Off._Fl_Drn",
player_stats."PGA" as "PGA",
player_stats.And1 as "And1",
player_stats.Blkd as "Blkd",
player_stats."Dist" as "Dist",
player_stats."2P_FGA%" as "2P_FGA%",
player_stats."0-3ft_FGA%" as "0-3ft_FGA%",
player_stats."3-10_FGA%" as "3-10_FGA%",
player_stats."10-16ft_FGA%" as "10-16ft_FGA%",
player_stats."16-3Pft_FGA%" as "16-3Pft_FGA%",
player_stats."3P_FGA%" as "3P_FGA%",
player_stats."2P_FG%" as "2P_FG%",
player_stats."0-3_FG%" as "0-3_FG%",
player_stats."3-10_FG%" as "3-10_FG%",
player_stats."10-16_FG%" as "10-16_FG%",
player_stats."16-3P_FG%" as "16-3P_FG%",
player_stats."3P_FG%" as "3P_FG%",
player_stats."2P_FG_AST%" as "2P_FG_AST%",
player_stats."3P_FG_AST%" as "3P_FG_AST%",
player_stats."%FGA_DUNK" as "%FGA_DUNK",
player_stats."#_DUNK" as "#_DUNK",
player_stats."%3PA" as "%3PA",
player_stats."Att_Heave" as "Att_Heave",
player_stats."#_Heave" as "#_Heave"
    from nba.ACTIVE_ROSTER_DUMMY active_roster, nba.player_stats, nba.team_stats
where active_roster.team = :team and active_roster.player_id = player_stats.player_id
 and active_roster.active = 1 and team_stats.team = :team and team_stats.season = :season and PLAYER_STATS.SEASON = :season
 and active_roster.GAME_DATE = :game_date;