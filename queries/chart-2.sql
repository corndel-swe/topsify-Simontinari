.mode json

SELECT artists.name AS artist_name,
       albums.name AS album_name,
       AVG (tracks.dancability) AS avarage_danceability,
       AVG (tracks.energy) AS avarage_energy,
       AVG (tracks.speechiness) AS avarage_speechiness,
       AVG (tracks.acousticness) AS avarage_acousticness,
       AVG (tracks.liveness) AS average_liveness
FROM artists
INNER JOIN albums, tracks
GROUP BY albums.id
GROUP BY album_name, tracks_name