START TRANSACTION;

SET NAMES 'utf8';

-- impresso

insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Brasão impresso em madeira', 'Brasão impresso em madeira (cópia do original), retocado, com aquarela e cores metálicas, a mão.', 90, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, value, item_count, created_at, updated_at)
values(@id, 0.4, 15, 18, 85, 0, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('1260', '4607890274', '941b754655', '2', 0, @id, 'Product', now(), now());
insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('4027', '4607282467', '6d749ef856', '5', 1, @id, 'Product', now(), now());
insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('1399', '5119180883', '074bf4d53d', '2', 2, @id, 'Product', now(), now());


-- relogio

insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Relógio de prato de madeira', 'Relógio de prato de madeira com brasão pirografado e pintado a mão.', 90, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, diameter, value, item_count, created_at, updated_at)
values(@id, 0.5, null, null, 27, 420, 0, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('1437', '5119784212', '18a37f05ca', '2', 0, @id, 'Product', now(), now());

-- panopla

insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Panopla', 'Brasão em painel de couro (panopla), pirografado e pintado a mão.', 90, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, diameter, value, item_count, created_at, updated_at)
values(@id, 0.5, 30, 35, null, 350, 0, now(), now());
insert into sizes(product_id, weight, width, height, diameter, value, item_count, created_at, updated_at)
values(@id, 0.5, 40, 45, null, 450, 0, now(), now());
insert into sizes(product_id, weight, width, height, diameter, value, item_count, created_at, updated_at)
values(@id, 0.5, 50, 55, null, 650, 0, now(), now());
insert into sizes(product_id, weight, width, height, diameter, value, item_count, created_at, updated_at)
values(@id, 0.5, 60, 65, null, 1200, 0, now(), now());
insert into sizes(product_id, weight, width, height, diameter, value, item_count, created_at, updated_at)
values(@id, 0.5, 70, 80, null, 2400, 0, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('1379', '5119891796', 'd3c56ba9ed', '2', 0, @id, 'Product', now(), now());
insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('4128', '5119884360', '116506c5a5', '5', 1, @id, 'Product', now(), now());

-- chapa

insert into products(name, description, delivery, junction, position, type, created_at, updated_at)
values('Brasão em chapa', 'Brasão em chapa galvanizada revestida de couro, pintado e pirografado a mão.', 90, 0, 0, 'Model', now(), now());

set @id = LAST_INSERT_ID();

insert into sizes(product_id, weight, width, height, diameter, value, item_count, created_at, updated_at)
values(@id, 0.5, 30, 35, null, 450, 0, now(), now());
insert into sizes(product_id, weight, width, height, diameter, value, item_count, created_at, updated_at)
values(@id, 0.5, 40, 45, null, 600, 0, now(), now());
insert into sizes(product_id, weight, width, height, diameter, value, item_count, created_at, updated_at)
values(@id, 0.5, 50, 55, null, 1200, 0, now(), now());
insert into sizes(product_id, weight, width, height, diameter, value, item_count, created_at, updated_at)
values(@id, 0.5, 60, 65, null, 2350, 0, now(), now());
insert into sizes(product_id, weight, width, height, diameter, value, item_count, created_at, updated_at)
values(@id, 0.5, 70, 80, null, 3500, 0, now(), now());

insert into photos(flickr_server, flickr_key, flickr_secret, flickr_farm, level, imageable_id, imageable_type, created_at, updated_at)
values('1102', '5119257493', '7ed4a048f8', '2', 0, @id, 'Product', now(), now());

COMMIT;