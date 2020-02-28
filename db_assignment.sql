select * from MOVIE;
SELECT 
    mov_title, mov_year
FROM
    MOVIE;
    
SELECT 
    mov_year
FROM
    MOVIE
WHERE
    mov_title = 'American Beauty';


SELECT 
    mov_title
FROM
    MOVIE
WHERE
    mov_year = '1999';
    
SELECT 
    mov_title
FROM
    MOVIE
WHERE
    mov_year < '1998';
    
select *	 from RATINGS;

select *  from MOVIE;


SELECT 
    mov_title, rev_name
FROM
    MOVIE,
    REVIEWER;
SELECT 
    rev_name, num_o_ratings
FROM
    RATINGS
        JOIN
    REVIEWER ON RATINGS.rev_id = REVIEWER.rev_id
WHERE
    num_o_ratings >= 7;
select * from REVIEWER;

SELECT 
    mov_title
FROM
    MOVIE
        JOIN
    RATINGS ON MOVIE.movie_id = RATINGS.movie_id
WHERE
    num_o_ratings IS NULL;

SELECT 
    rev_name
FROM
    REVIEWER
        JOIN
    RATINGS ON REVIEWER.rev_id = RATINGS.rev_id
WHERE
    num_o_ratings IS NULL;
    

select * from MOVIE_DIRECTION;
select * from MOVIE;

select * from DIRECTOR;

SELECT 
    dir_fname, dir_lname
FROM
    DIRECTOR
WHERE
    dir_id IN (SELECT 
            dir_id
        FROM
            MOVIE_DIRECTION
        WHERE
            movie_id = 901);