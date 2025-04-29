# Q.1: Import both the .csv files in Dbeaver under the database name Sky_Sports

create database Sky_Sports;
show databases;
use Sky_Sports;
select * from team_stats;
select * from performance;

# Q.2: write an SQL Query to show all the UNIQUE team names.

select distinct (team) from team_stats;

# Q.3: write an SQL Query to show name of team which has rank 1 from group 7.

select team from team_stats 
where team_stats.group = 7 and team_stats.rank = 1;

# Q.4: write an SQL Query to show count of all team.

select count(team) from team_stats;

# Q.5: write an SQL Query to show matches_played by each team.

select team, matches_played from team_stats;

# Q.6: write an SQL Query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent

select team, (wins/matches_played)*100 as wins_percent from team_stats;

# Q.7: write an SQL Query to show which team has maximum goals_scored and their count.

select team, goals_scored from team_stats where goals_scored = (select max(goals_scored) from team_stats);

#select max(goals_scored) from team_stats;
#select team, goals_scored from team_stats where goals_scored = 9;

# Q.8: write an SQL Query to show percent of draws with respect to matches_played round of to 2 digits by each team.

select round((draws/matches_played)* 100) as percentage, team from team_stats ;

# Q.9: write an SQL Query to show which team has minimum goal_scored and their count

select team, goals_scored from team_stats where goals_scored = (select min(goals_scored) from team_stats);

# Q.10: write an SQL Query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent.

select (losses/matches_played)*100 as losses_percent, team from team_stats order by losses_percent asc;

# Q.11: write an SQL Query to show the average goal_difference.

select avg(goal_difference) from team_stats;

# Q.12: write an SQL Query to show name of the team where points are 0.

select team, points from team_stats where points = 0;

# Q.13: write an SQL Query to show all data where expected_goal_scored is less than exp_goal_conceded.

select * from team_stats where expected_goal_scored < exp_goal_conceded;

# Q.14: write an sql query to show data where exp_goal_difference is in between -0.5 and 0.5

select * from team_stats where exp_goal_difference between -0.5 and 0.5;

# Q.15: write an sql query to show all data in ascending order by exp_goal_difference_per_90

select *, exp_goal_difference_per_90 from team_stats order by exp_goal_difference_per_90 asc;

# Q.16: write an sql query to show team which has maximum number of players_used

select team, players_used from performance where players_used = (select max(players_used) from performance);

# Q.17: write an sql query to show each team name and avg_age in ascending order by avg_age

select team, avg_age from performance order by avg_age asc;

# Q.18: write an sql query to show average possession of teams.

select avg(possession), team from performance group by team;

# Q.19: write an sql query to show team which has played atleast 5 games.

select team, games from performance where games >=5;

# Q.20: write an sql query to show all data for which minutes is greater than 600.

select * from performance where minutes > 600;

# Q.21: write an sql query to show team, goals, assists in ascending order by goals.

select team, goals, assists from performance order by goals asc;

# Q.22: write an sql query to show team, pens_made, pens_att in descending order by pens_made.

select team, pens_made, pens_att from performance order by pens_made desc;

# Q.23: write an sql query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow.

select team, cards_yellow, cards_red from performance where cards_red = 1 order by cards_yellow asc;

# Q.24: write an sql query to show team, goals_per90, assists_per90, goals_assiss_per90 in descending order by goals_assists_per90.

select team, goals_per90, assists_per90, goals_assists_per90 from performance order by goals_Assists_per90 desc;

# Q.25: write an sql query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90.

select team, goals_pens_per90, goals_assists_pens_per90 from performance order by goals_assists_pens_per90 asc;

# Q.26: write an sql query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct.

select team, shots, shots_on_target, shots_on_target_pct from performance where shots_on_target_pct < 30 order by shots_on_target_pct asc;

# Q.27: write an sql query to show team, shots_per90, shots_on_target_per90 for team Belgium.

select team, shots_per90, shots_on_target_per90 from performance where team = 'Belgium';

# Q.28: write an sql query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance.

select team, goals_per_shot g_p_s, goals_per_shot_on_target g_p_s_o_t, average_shot_distance avg_shot_dist from performance order by avg_shot_dist desc;

# Q.29: write an sql query to show team, errors, touches for which errors is 0 and touches is less than 1500.

select team, errors, touches from performance where errors = 0 and touches < 1500;

# Q.30: write an sql query to show team, fouls which has maximum number of fouls.

select team, fouls from performance where fouls=(select max(fouls) from performance);

# Q.31: write an sql query to show team, offisdes which has offsides less than 10 or greater than 20.

select team, offsides from performance where offsides< 10 or offsides >20;

# Q.32: write an sql query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct.

select team, aerials_won, aerials_lost, aerials_won_pct from performance order by aerials_won_pct desc;

# Q.33: write an sql query to show number of teams each group has!

select `group`, count(team) from team_stats group by `group`;

# Q.34: write an sql query to show team names group 6 has

select `group`, team from team_stats where `group` = 6;

# Q.35: write an sql query to show Australia belongs to which group

select team, `group` from team_stats where team='Australia';

# Q.36: write an sql query to show group, average wins by each group

select `group`, avg(wins) from team_stats group by `group`;

# Q.37: write an sql query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored.

select `group` , max(expected_goal_scored) from team_stats group by `group` order by max(expected_goal_scored) asc;

# Q.38: write an sql query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded.

 select `group`, min(exp_goal_conceded) Min_exp_goal_con from team_stats group by `group`order by  Min_exp_goal_con desc;

# Q.39: write an sql query to show group,average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90.

select `group`, avg(exp_goal_difference_per_90) avg_goal_diff90 from team_stats group by `group` order by avg_goal_diff90 asc;

# Q.40: write an sql query to show which team has equal number of goals_scored and goals_against.

select team, goals_scored goals from team_stats where goals_scored = goals_against;

# Q.41: write an sql query to show which team has maximum players_used

select team, players_used from performance where players_used = (select max(players_used) from performance);

# Q.42: write an sql query to show team, players_used, avg_age, games, minutes where minutes less than 500 and greater that 200.

select team, players_used, avg_age, games, minutes from performance where minutes < 500 and minutes > 200;

# Q.43: write an sql query to show all data of group_stats in ascending order by points.

select * from team_stats order by points asc;

# Q.44: write an sql query to show ALL UNIQUE team in ascending order by team.

select distinct team from team_stats order by team asc;

# Q.45: write an sql query to show average avg_age of each group and arrange it in descending order by avg_age.

select avg(p.avg_age) as avg_age, ts.`group` from performance p inner join team_stats ts on p.team = ts.team
group by `group` order by avg_age desc;

# Q.46: write an sql query to show sum of fouls for each group and arrange it in ascending order by fouls.

select sum(p.fouls) as sum_of_fouls, ts.`group` from performance p inner join team_stats ts on p.team = ts.team group by `group` order by sum_of_fouls asc;

# Q.47: write an sql query to show total number of games for each group and arrange it in descending order by games.

select sum(p.games) as total_number_of_games, ts.`group` from performance p inner join team_stats ts on p.team = ts.team
group by `group` order by total_number_of_games desc;

# Q.48: write an sql query to show total number of players_used for each group and arrange it in ascending order by players_used.

select sum(p.players_used) as total_num_of_players, ts.`group` from performance p inner join team_stats ts on p.team=ts.team
group by `group` order by total_num_of_players asc; 

# Q.49: write an sql query to show total number of offsides for each group and arrange it in ascending order by offsides.

select sum(p.offsides) as total_num_of_offsides, ts.`group` from performance p inner join team_stats ts on p.team = ts.team
group by `group` order by total_num_of_offsides asc;

# Q.50: write an sql query to show average passes_pct for each group and arrange it in descending order by passes_pct.

select avg(p.passes_pct) as avg_passes_pct, ts.`group` from performance p inner join team_stats ts on p.team = ts.team
group by `group` order by avg_passes_pct desc;

# Q.51: write an sql query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.

select avg(p.goals_per90) as avg_goals_per90, ts.`group` from performance p inner join team_stats ts on p.team = ts.team
group by `group` order by avg_goals_per90 asc;

# COMPLETE.


