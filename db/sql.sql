CREATE TABLE public.months
(id int PRIMARY KEY NOT NULL,
name varchar,
 days int
);

INSERT INTO months(id,name,days) VALUES
(1,'January',31),
(2,'February',28),
(3,'March',31),
(4,'April',30),
(5,'May',31),
(6,'June',30),
(7,'July',31),
(8,'August',31),
(9,'September ',30),
(10,'October ',31),
(11,'November',30),
(12,'December',31),
(13,'Travenʹ',44);

SELECT * FROM months
WHERE days = 30;

DELETE FROM public.months  WHERE days NOT BETWEEN 28 AND 31;

ALTER TABLE public.months ADD COLUMN season varchar;

UPDATE public.months
   SET season = 'spring'
   WHERE id BETWEEN 3 AND 5;
   UPDATE public.months
   SET season = 'summer'
   WHERE id BETWEEN 6 AND 8;
   UPDATE public.months
   SET season = 'autumn'
   WHERE id BETWEEN 9 AND 11;
   UPDATE public.months
   SET season = 'winter'
   WHERE id=12 OR id=1 OR id=2;

CREATE TABLE public.season_of_the_year
(season varchar PRIMARY KEY NOT NULL,
average_temperature real
);

INSERT INTO season_of_the_year(season,average_temperature) VALUES
('spring',11.2),
('summer',20.4),
('autumn',9.6),
('winter',-5.3);

ALTER TABLE public.months
ADD FOREIGN KEY (season) REFERENCES public.season_of_the_year(season);