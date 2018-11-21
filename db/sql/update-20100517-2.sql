START TRANSACTION;

-- camisa
insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Camiseta Museu Medieval', 'Camiseta com a logomarca do Museu Medieval - Castelo Saint George na cor preta.', 0, 0, 0, 'Souvenir', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 0.5, 0, 0, 35, -1, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('3415', '4607857630', 'a980324a73', '4', 0, @id, 'Product', now(), now());


-- Bone
insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Boné Museu Medieval', 'Boné com a logomarca do Museu Medieval - Castelo Saint George na cor verde.', 0, 0, 0, 'Souvenir', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 0.5, 0, 0, 25, -1, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('4023', '4607246193', '1f54600bbb', '5', 0, @id, 'Product', now(), now());


-- Brasao base espada
insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Brasão com espada', 'Brasão sobre base de madeira e bainha para colocação de espadas militares ou medievais. <span class="alert">Não acompanha espada, que devem ser adquiridas pelo cliente</span>.', 0, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('2484', '3945805831', '695ed897eb', '3', 0, @id, 'Product', now(), now());


-- Jogo de brasões e espada
insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Jogo de brasões e espadas', 'Jogo de brasões em base de madeira e com duas espadas decorativas.', 0, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('2594', '3946587238', '45cee99cdd', '3', 0, @id, 'Product', now(), now());


-- Brasao madeira macica
insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Brasão em madeira maciça mod.2', 'Brasão pirogravado e pintado em couro com espuma injetada em base de madeira maciça.', 0, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 1, 20, 23, 280, -1, now(), now());
insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 2, 28, 33, 490, -1, now(), now());
insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 3.5, 39, 43, 750, -1, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('1025', '4607249971', '718be968a3', '2', 0, @id, 'Product', now(), now());
insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('3343', '4607885784', 'db2ae798df', '4', 1, @id, 'Product', now(), now());


COMMIT;