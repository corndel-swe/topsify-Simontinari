.mode json

SELECT artists.name AS artist_name, COUNT (tracks.explicit) AS explicit_tracks_count
FROM albums
INNER JOIN tracks, albums
WHERE artists.explicit = 1
GROUP BY artists.id
GROUP BY explicit_tracks_albums;
