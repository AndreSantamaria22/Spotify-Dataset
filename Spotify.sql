SELECT * FROM Spotify.`universal_top_spotify_songs(ascii)`;

-- 1. Most popular songs
SELECT Distinct `name`, artists, popularity, duration_ms, danceability, tempo 
FROM Spotify.`universal_top_spotify_songs(ascii)`
Order By popularity DESC;

-- 2. Popular artists around the world by country
Select artists, Count( Distinct country) AS pop_artists_around_world
FROM Spotify.`universal_top_spotify_songs(ascii)`
Group By artists
Order By pop_artists_around_world DESC

-- 3. Popular artists count
Select artists, Count(popularity) as sum_pop
FROM Spotify.`universal_top_spotify_songs(ascii)`
Group By artists
Order By sum_pop DESC

-- 4. Most popular by country; = 100
Select Distinct `name`, artists, country, popularity
From Spotify.`universal_top_spotify_songs(ascii)`
Where popularity = 100
AND country <> ""
Order By country 

-- 5. Explicit = True
Select Distinct `name`, artists, is_explicit, popularity
From Spotify.`universal_top_spotify_songs(ascii)`
Where is_explicit = 'TRUE'
Order By popularity DESC

