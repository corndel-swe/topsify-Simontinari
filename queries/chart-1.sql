.mode json

SELECT artists.name AS artist_name, COUNT (tracks.id) AS explicit_tracks_albums
FROM artists
INNER JOIN tracks, albums
WHERE artists.explicit = 1
GROUP BY artists.id
GROUP BY explicit_tracks_albums;
