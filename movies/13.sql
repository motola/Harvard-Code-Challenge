SELECT DISTINCT (name) FROM people WHERE name IS NOT 'Kevin Bacon' AND id IN (
    SELECT person_id FROM stars WHERE movie_id IN (
        SELECT id FROM movies WHERE id IN (
            SELECT movie_id FROM stars WHERE person_id = (
                SELECT id FROM people WHERE name = 'Kevin Bacon'

            )
        )
    )
);

