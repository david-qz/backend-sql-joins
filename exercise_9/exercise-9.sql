-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL
select film.title from inventory
left join film on inventory.film_id = film.film_id
left join rental on inventory.inventory_id = rental.inventory_id
where rental.rental_id is null;
