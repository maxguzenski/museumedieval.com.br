START TRANSACTION;

SET NAMES 'utf8';

-- aquarelado

insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Brasão aquarelado', 'Brasão aquarelado em papel A4. Dimesões apróximada do desenho: 14x19 cm.', 90, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 1, 21, 29.7, 350, 0, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('4056', '4614218057', 'b4de99e8f5', '5', 0, @id, 'Product', now(), now());
insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('4034', '4607952950', 'd452a410c1', '5', 1, @id, 'Product', now(), now());

-- arte final

insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Brasão arte final', 'Brasão em arte final em papel A4, pode ser escaniado e usado para fazer estampas. Dimesões apróximada do desenho: 14x19 cm.', 90, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 1, 21, 29.7, 1200, 0, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('3346', '4614978822', '45977d293f', '4', 0, @id, 'Product', now(), now());
insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('4053', '4614835962', '840b7e804b', '5', 1, @id, 'Product', now(), now());

-- tronco

insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Brasão em tronco de árvore', 'Brasão em tronco de árvore pirografado e pintado à mão. O tamanho informado pode variar.', 90, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 1, 20, 45, 450, 0, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('1275', '4607302187', '841a5657c6', '2', 0, @id, 'Product', now(), now());

-- sola

insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Brasão em sola sapato Mod. 1', 'Brasão em sola de sapato em cor natural, trabalho em técnica portuguesa de marchetearia.', 90, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 1, 20, 23, 320, 0, now(), now());
insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 1, 28, 33, 650, 0, now(), now());
insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 1, 39, 43, 1200, 0, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('4003', '4208087362', '9e103e87d8', '5', 0, @id, 'Product', now(), now());

-- sola cor

insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Brasão em sola sapato Mod. 2', 'Brasão em sola de sapato de cor negra e pintado à mão, trabalho em técnica portuguesa de marchetearia.', 90, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 1, 20, 23, 320, 0, now(), now());
insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 1, 28, 33, 650, 0, now(), now());
insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 1, 39, 43, 1200, 0, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('4025', '4208090226', '7aa8073be0', '5', 0, @id, 'Product', now(), now());

COMMIT;