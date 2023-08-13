drop database depth_chart;
create database depth_chart;
use depth_chart;

create table teams (
	team_id int not null auto_increment,
    team_name varchar(255) not null,
    primary key (team_id)
);

create table players (
	player_id int not null auto_increment, 
    team_id int not null, 
    first_name varchar(80) not null, 
    last_name varchar(80) not null, 
    position enum ('C', 'LW', 'RW', 'D', 'G') null,
	primary key (player_id),
	constraint fk_players__teams__teams_id foreign key (team_id) references teams (team_id)
);

create table player_stats (
	player_stats_id int not null auto_increment,
    player_id int not null,
    games_played int null,
    goals int null,
    assists int null,
    points int as (goals + assists) null,
    goals_against_average decimal (4,2) null,
    save_percentage decimal (3,3) null,
    primary key (player_stats_id),
    constraint fk_players foreign key (player_id) references players (player_id)
);

insert into teams (team_name) values ('Detroit Red Wings');
insert into teams (team_name) values ('Toronto Maple Leafs');
insert into teams (team_name) values ('Montreal Canadiens');

insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Dylan', 'Larkin', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Alex', 'DeBrincat', 'LW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Andrew', 'Copp', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'J.T.', 'Compher', 'LW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'David', 'Perron', 'LW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Robby', 'Fabbri', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Daniel', 'Sprong', 'RW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Klim', 'Kostin', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Michael', 'Rasmussen', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Christian', 'Fischer', 'RW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Jonatan', 'Berggren', 'LW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Lucas', 'Raymond', 'LW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Ben', 'Chiarot', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Shayne', 'Gostisbehere', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Justin', 'Holl', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Jake', 'Walman', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Olli', 'Maatta', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Gustav', 'Lindstrom', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Moritz', 'Seider', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Ville', 'Husso', 'G';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'James', 'Reimer', 'G';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Detroit Red Wings'), 'Alex', 'Lyon', 'G';

insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Nicholas', 'Abruzzese', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Max', 'Domi', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Dylan', 'Gambrell', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Calle', 'Jarnkrok', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'David', 'Kampf', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Sam', 'Lafferty', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Auston', 'Matthews', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Bobby', 'McMann', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'John', 'Tavares', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Tyler', 'Bertuzzi', 'LW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Easton', 'Cowan', 'RW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Matthew', 'Knies', 'LW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Mitchell', 'Marner', 'RW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'William', 'Nylander', 'RW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Ryan', 'Reaves', 'RW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Alex', 'Steeves', 'LW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'T.J.', 'Brodie', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Carl', 'Dahlstrom', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Mark', 'Giordano', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'John', 'Klingberg', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'William', 'Lagesson', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Maxime', 'Lajoie', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Timothy', 'Liljegren', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Jake', 'McCabe', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Morgan', 'Rielly', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Conor', 'Timmins', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Martin', 'Jones', 'G';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Ilya', 'Samsonov', 'G';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Toronto Maple Leafs'), 'Joseph', 'Woll', 'G';

insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Lias', 'Andersson', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Lucas', 'Condotta', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Kirby', 'Dach', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Christian', 'Dvorak', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Jake', 'Evans', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Sean', 'Farrell', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Philippe', 'Maillet', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Alex', 'Newhook', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Mitchell', 'Stephens', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Nick', 'Suzuki', 'C';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Josh', 'Anderson', 'RW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Joel', 'Armia', 'RW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Brendan', 'Gallagher', 'RW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Rafael', 'Harvey-Pinard', 'LW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Nathan', 'Legare', 'RW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Michael', 'Pezzetta', 'LW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Joel', 'Teasdale', 'LW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Jesse', 'Ylonen', 'RW';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Justin', 'Barron', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Nicolas', 'Beaudin', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Kaiden', 'Guhle', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Jordan', 'Harris', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Brady', 'Keeper', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Johnathan', 'Kovacevic', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Mike', 'Matheson', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Jeff', 'Petry', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'David', 'Reinbacher', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'David', 'Savard', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Chris', 'Wideman', 'D';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Jake', 'Allen', 'G';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Casey', 'DeSmith', 'G';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Sam', 'Montembeault', 'G';
insert into players (team_id, first_name, last_name, position) select (select team_id from teams where team_name = 'Montreal Canadiens'), 'Cayden', 'Primeau', 'G';

insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Berggren' and first_name = 'Jonatan' and position = 'LW'), 67, 15, 13, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Chiarot' and first_name = 'Ben' and position = 'D'), 76, 5, 14, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Compher' and first_name = 'J.T.' and position = 'LW'), 82, 17, 35, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Copp' and first_name = 'Andrew' and position = 'C'), 82, 9, 33, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'DeBrincat' and first_name = 'Alex' and position = 'LW'), 82, 27, 39, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Fabbri' and first_name = 'Robby' and position = 'C'), 28, 7, 9, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Fischer' and first_name = 'Christian' and position = 'RW'), 80, 13, 14, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Gostisbehere' and first_name = 'Shayne' and position = 'D'), 75, 13, 28, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Holl' and first_name = 'Justin' and position = 'D'), 80, 2, 16, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Husso' and first_name = 'Ville' and position = 'G'), 56, null, null, 3.11, 0.896;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Kostin' and first_name = 'Klim' and position = 'C'), 57, 11, 10, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Larkin' and first_name = 'Dylan' and position = 'C'), 80, 32, 47, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Lindstrom' and first_name = 'Gustav' and position = 'D'), 36, 1, 7, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Lyon' and first_name = 'Alex' and position = 'G'), 15, null, null, 2.89, 0.914;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Maatta' and first_name = 'Olli' and position = 'D'), 78, 6, 17, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Perron' and first_name = 'David' and position = 'LW'), 82, 24, 32, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Rasmussen' and first_name = 'Michael' and position = 'C'), 56, 10, 19, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Raymond' and first_name = 'Lucas' and position = 'LW'), 74, 17, 28, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Reimer' and first_name = 'James' and position = 'G'), 43, null, null, 3.48, 0.89;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Seider' and first_name = 'Moritz' and position = 'D'), 82, 5, 37, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Sprong' and first_name = 'Daniel' and position = 'RW'), 66, 21, 25, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Walman' and first_name = 'Jake' and position = 'D'), 63, 9, 9, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Allen' and first_name = 'Jake' and position = 'G'), 42, null, null, 3.55, 0.891;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Anderson' and first_name = 'Josh' and position = 'RW'), 3, 0, 0, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Armia' and first_name = 'Joel' and position = 'RW'), 69, 21, 11, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Barron' and first_name = 'Justin' and position = 'D'), 39, 4, 11, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Evans' and first_name = 'Jake' and position = 'C'), 54, 2, 17, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Farrell' and first_name = 'Sean' and position = 'C'), 6, 1, 0, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Gallagher' and first_name = 'Brendan' and position = 'RW'), 37, 8, 6, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Guhle' and first_name = 'Kaiden' and position = 'D'), 44, 4, 14, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Harris' and first_name = 'Jordan' and position = 'D'), 65, 4, 13, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Harvey-Pinard' and first_name = 'Rafael' and position = 'LW'), 34, 14, 6, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Kovacevic' and first_name = 'Johnathan' and position = 'D'), 77, 3, 12, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Matheson' and first_name = 'Mike' and position = 'D'), 48, 8, 26, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Montembeault' and first_name = 'Sam' and position = 'G'), 40, null, null, 3.42, 0.901;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Pezzetta' and first_name = 'Michael' and position = 'LW'), 63, 7, 8, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Primeau' and first_name = 'Cayden' and position = 'G'), 3, null, null, 3.45, 0.852;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Savard' and first_name = 'David' and position = 'D'), 62, 3, 17, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Suzuki' and first_name = 'Nick' and position = 'C'), 82, 26, 40, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Teasdale' and first_name = 'Joel' and position = 'LW'), 2, 0, 1, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Wideman' and first_name = 'Chris' and position = 'D'), 46, 0, 6, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Ylonen' and first_name = 'Jesse' and position = 'RW'), 37, 6, 10, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Abruzzese' and first_name = 'Nicholas' and position = 'C'), 2, 0, 2, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Bertuzzi' and first_name = 'Tyler' and position = 'LW'), 58, 2, 12, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Giordano' and first_name = 'Mark' and position = 'D'), 78, 4, 20, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Jarnkrok' and first_name = 'Calle' and position = 'C'), 73, 20, 19, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Kampf' and first_name = 'David' and position = 'C'), 82, 7, 20, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Knies' and first_name = 'Matthew' and position = 'LW'), 3, 0, 1, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Lafferty' and first_name = 'Sam' and position = 'C'), 19, 2, 4, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Liljegren' and first_name = 'Timothy' and position = 'D'), 67, 6, 12, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Marner' and first_name = 'Mitchell' and position = 'RW'), 80, 30, 69, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Matthews' and first_name = 'Auston' and position = 'C'), 74, 40, 45, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'McCabe' and first_name = 'Jake' and position = 'D'), 21, 1, 4, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'McMann' and first_name = 'Bobby' and position = 'C'), 10, 0, 1, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Nylander' and first_name = 'William' and position = 'RW'), 82, 40, 47, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Rielly' and first_name = 'Morgan' and position = 'D'), 65, 4, 37, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Samsonov' and first_name = 'Ilya' and position = 'G'), 42, null, null, 2.33, 0.919;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Steeves' and first_name = 'Alex' and position = 'LW'), 3, 0, 0, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Tavares' and first_name = 'John' and position = 'C'), 80, 36, 44, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Timmins' and first_name = 'Conor' and position = 'D'), 25, 2, 12, null, null;
insert into player_stats (player_id, games_played, goals, assists, goals_against_average, save_percentage) select (select player_id from players where last_name = 'Woll' and first_name = 'Joseph' and position = 'G'), 7, null, null, 2.16, 0.932;

select t.team_name, 
	p.position, 
    p.first_name, 
    p.last_name, 
    ps.games_played, 
    ps.goals, 
    ps.assists, 
    ps.points, 
    ps.goals_against_average, 
    ps.save_percentage
from teams t 
left join players p on p.team_id = t.team_id
left join player_stats ps on ps.player_id = p.player_id 
where ps.games_played is not null
order by t.team_name, p.position, ps.points desc, ps.save_percentage desc;
