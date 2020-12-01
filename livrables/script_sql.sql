-- STOCKLINE 
INSERT INTO "StockLine" (id, "id_Product", "id_Restaurant", quantity) VALUES (default, 2, 1, 1);

-- ORDERLINE
INSERT INTO "OrderLine" (id, price, quantity, "id_Order", "id_Product") VALUES (default, 16, 2, 1, 3);
INSERT INTO "OrderLine" (id, price, quantity, "id_Order", "id_Product") VALUES (default, 55, 7, 1, 3);

-- ADDRESS
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '898.452.5406', '30946 Collins Path','Port Ericafurt', 34923, 1, 2, 1);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '866.004.3194x07690', '02577 Jones Knolls','Port Jill', 50500, 1, 2, 1);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '673.852.0292x9879', '346 Deleon Expressway Suite 027','Lake Thomasmouth', 29943, 3, 2, 12);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '2168898229', '962 Melissa Fort','Port Kyle', 07987, 3, 1, 7);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '(680)330-7705', '8539 Shelton Drive','Wrightport', 85477, 3, 1, 5);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '667.121.1815', '68174 Martinez Walk Apt. 937','West Lisaland', 16672, 2, 2, 5);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '001-204-915-2111', '6117 Kelly Ramp','Rodriguezland', 60474, 1, 1, 7);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '094-759-5844x2035', '789 Jenkins Ramp Suite 904','Miaview', 12663, 3, 3, 14);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '+1-556-142-7559x52387', '6871 Deborah Forks Suite 877','Jesseview', 80892, 2, 3, 9);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '(830)492-0784', '37277 Sawyer Brooks','Michaelhaven', 08647, 2, 1, 9);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '4514875123', '120 Hamilton Hollow Apt. 411','Charlesberg', 04672, 2, 1, 13);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '716-654-8436x270', '463 Kristin Cliffs Suite 925','West Rodney', 78206, 3, 3, 4);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '+1-048-713-0989', '891 Barr Trace Suite 953','Port Kimberlyton', 61604, 1, 1, 11);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '001-510-668-5972x6145', '3770 Carroll Stream','New Melanieside', 08848, 3, 3, 9);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '336-738-4806', '132 Huffman Fork','Harperfurt', 45513, 1, 3, 6);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '+1-856-205-3118x90278', '082 Eddie Shoal','Maryberg', 37444, 2, 2, 14);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '(453)890-5881x912', '83351 Aaron Grove','Lake Meganstad', 88445, 2, 3, 9);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '257-547-4004', '831 Rogers Burgs','East Aprilland', 37515, 1, 3, 6);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '470-233-8988x4326', '0238 Jones Crossing Suite 633','North Josephmouth', 34217, 2, 2, 16);
INSERT INTO "Address" (id, phone_number, street_name, city, zip_code,"id_Order", "id_Restaurant", "id_User") VALUES (default, '+1-991-553-8068', '39079 Paul Knolls Apt. 343','Port Willie', 78228, 2, 1, 2);

-- CARTE
INSERT INTO "Carte" (id, description, "id_Product", "id_Restaurant") VALUES (default, 'Carte pizzas', 1, 2);
INSERT INTO "Carte" (id, description, "id_Product", "id_Restaurant") VALUES (default, 'Carte pizzas', 2, 1);
INSERT INTO "Carte" (id, description, "id_Product", "id_Restaurant") VALUES (default, 'Carte pizzas', 3, 4);
INSERT INTO "Carte" (id, description, "id_Product", "id_Restaurant") VALUES (default, 'Carte boissons', 4, 1);

-- CATEGORY
INSERT INTO "Category" (id, name, "id_Product") VALUES (default, 'Pizza', 2);
INSERT INTO "Category" (id, name, "id_Product") VALUES (default, 'Soda', 2);
INSERT INTO "Category" (id, name, "id_Product") VALUES (default, 'Extra', 1);
INSERT INTO "Category" (id, name, "id_Product") VALUES (default, 'Divers', 1);

-- DELIVRERYMODE
INSERT INTO "DelivreryMode" (id, type) VALUES (default, 'Pick-up');
INSERT INTO "DelivreryMode" (id, type) VALUES (default, 'Delivrery');

-- ORDER
INSERT INTO "Order" (id, description, "id_DelivreryMode", "id_OrderStatus", "id_PaymentMethod", "id_User") VALUES (default, 'Commande restaurant', 1, 1, 1, 14);
INSERT INTO "Order" (id, description, "id_DelivreryMode", "id_OrderStatus", "id_PaymentMethod", "id_User") VALUES (default, 'Commande restaurant', 1, 1, 1, 10);

-- ORDERSTATUS
INSERT INTO "OrderStatus" (id, created_date, updated_date) VALUES (default, '21/02/2020 12:29', '21/02/2020 14:29');
INSERT INTO "OrderStatus" (id, created_date, updated_date) VALUES (default, '24/02/2020 12:29', '24/02/2020 14:29');

-- PAYMENTMETHOD
INSERT INTO "PaymentMethod" (id, type) VALUES (default, 'credit card');
INSERT INTO "PaymentMethod" (id, type) VALUES (default, 'cash');
INSERT INTO "PaymentMethod" (id, type) VALUES (default, 'paypal');

-- PRODUCT
INSERT INTO "Product" (id, name, "id_Recette") VALUES (default, 'Pizza 78 fromages', 2);
INSERT INTO "Product" (id, name, "id_Recette") VALUES (default, 'Pizza ananas nutella', 2);
INSERT INTO "Product" (id, name, "id_Recette") VALUES (default, 'Pizza pesto thon', 1);
INSERT INTO "Product" (id, name, "id_Recette") VALUES (default, 'Pizza choucroute', 2);
INSERT INTO "Product" (id, name) VALUES (default, 'Coca Cola');

-- RECETTE
INSERT INTO "Recette" (id, name) VALUES (default, 'Local growth size present town.');
INSERT INTO "Recette" (id, name) VALUES (default, 'Own laugh foot case perform over clear.');
INSERT INTO "Recette" (id, name) VALUES (default, 'Hot theory local ball situation.');
INSERT INTO "Recette" (id, name) VALUES (default, 'Industry garden turn possible suggest.');
INSERT INTO "Recette" (id, name) VALUES (default, 'Defense police total.');
INSERT INTO "Recette" (id, name) VALUES (default, 'Room believe hear grow modern himself.');
INSERT INTO "Recette" (id, name) VALUES (default, 'Language whatever view suffer bed opportunity pattern.');
INSERT INTO "Recette" (id, name) VALUES (default, 'Win name suffer.');
INSERT INTO "Recette" (id, name) VALUES (default, 'Different form put along per traditional.');

-- RESTAURANT
INSERT INTO "Restaurant" (id, name, "id_Reviews") VALUES (default, 'Chez Fredo', 2);
INSERT INTO "Restaurant" (id, name, "id_Reviews") VALUES (default, 'Pizz AH!', 2);
INSERT INTO "Restaurant" (id, name, "id_Reviews") VALUES (default, 'Le regina', 2);
INSERT INTO "Restaurant" (id, name, "id_Reviews") VALUES (default, 'Miam PIZZ', 2);

-- REVIEWS
INSERT INTO "Reviews" (id, content) VALUES (default, 'Soon campaign table modern.');
INSERT INTO "Reviews" (id, content) VALUES (default, 'Something civil central behavior half seem create TV.');
INSERT INTO "Reviews" (id, content) VALUES (default, 'Goal adult grow.');
INSERT INTO "Reviews" (id, content) VALUES (default, 'Operation majority hotel air.');
INSERT INTO "Reviews" (id, content) VALUES (default, 'Officer article former after.');
INSERT INTO "Reviews" (id, content) VALUES (default, 'Service color product audience truth much.');
INSERT INTO "Reviews" (id, content) VALUES (default, 'Pm available occur woman interesting knowledge miss sometimes.');
INSERT INTO "Reviews" (id, content) VALUES (default, 'Nature company sort entire.');
INSERT INTO "Reviews" (id, content) VALUES (default, 'Pattern end about physical turn city everyone.');

-- ROLE
INSERT INTO "Role" (id, role) VALUES (default, 'staff');
INSERT INTO "Role" (id, role) VALUES (default, 'customer');
INSERT INTO "Role" (id, role) VALUES (default, 'admin');
INSERT INTO "Role" (id, role) VALUES (default, 'manager');
INSERT INTO "Role" (id, role) VALUES (default, 'delivrery_employee');

-- USER
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Victoria Ortiz', 'Hall','kevinwilliams@smith.com', 'VT&H$FyUK7s@E4scc&!Ww@QP!8#&WlpB3AjH#M#F', 1);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Franklin Collins', 'Campbell','robert11@hawkins.com', 'LbvDO7OontLmkwh0oXuQ(EYv#YzuC7!Hl6x2^Q(o', 1);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Henry Chung', 'Mcbride','bfoley@cook-johnson.com', 'h(cU7A#xy1(CONXWcGP+*k@vxIY*WR4*&V1^(r5s', 1);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Mindy Potts', 'Welch','mgibson@gmail.com', 'Nn2BLa3H5XD$Ek3TB!jC!UeD_s_42vTsC6%2VB#0', 2);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Elizabeth Cooley', 'Cook','jonathan98@carter.com', 'd95Kfvs#TsDz1sK)w7*57fAgO*9bJft@_*Rwcymi', 2);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Charlene Li', 'Payne','cooktaylor@hotmail.com', '%5RFHHRcXa0ThekhGz&(xjla^7MeFrQCq$Zk@PIS', 2);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Jennifer Parker', 'Medina','eric81@hotmail.com', 'A#1Ih%vk&+SdaC131rw77aK)tnw6NZVxzB3cOCE_', 2);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Tiffany Jones', 'Gillespie','pmorrison@johnson.biz', 'k4sYbwhU$0GVJAgw9+hHg^oa$4*gJ+^!%OhSVCoU', 1);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Rita Roberts', 'Nunez','bradley71@byrd.info', '+45&(lH4f#7wgCg0*5WoLz(51)AI1bDl#9YiaUIF', 2);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Alexander Marshall', 'Davidson','teresaruiz@hotmail.com', '5c5VWKvHc_J%iPS$IDNkGNOKZB^EW#qsV2qkyO7J', 2);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Brian Coffey', 'Guerra','jorgejohnson@jones.com', 'db+!wVq5&OMR3KGC4q793R)($dOGnia^hcbXEo0@', 2);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Ashley Browning', 'Espinoza','marshallpedro@hotmail.com', 'dy*55DDcQRWRxG9W%1zZqsXokujxdd+@46wF%sP@', 1);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Victoria Griffin', 'Harris','phillipsmanuel@chen-hamilton.com', '19G@C^_5CUfg@IofyaQN%&%iAiN5QS$3DM@T*4UU', 1);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Craig Rodriguez', 'Robinson','katherinegarrett@hotmail.com', '6R4Dey1^^r6_OkyoTQ9L1U92!ozACZqvXrm6tLUs', 2);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Matthew Davis', 'Dodson','smartin@gill-marshall.info', 'w0Crw_57CZ&c6&xgHXyFLKV1!j_u+j3+O#*dXFQW', 1);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Mary Coleman', 'Cooper','michaelwilliams@yahoo.com', '_i5H6F$czA$*7hJR)TvoleLvS!z4gx8S$^*%6i$o', 2);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Jeffrey Williams', 'Wood','theresa32@yahoo.com', 'A_mYnZTSmjsEK@WQE$BdK1v#$2A8tnpcRgXZ3+SS', 2);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Michelle Dean', 'Bowen','melissacoleman@hotmail.com', 's+oMj#*7aQN8u%@VpJ3(pZ(owVIMerWOI$7crtRs', 1);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Thomas Velasquez', 'Dickerson','amorgan@hotmail.com', 'R#OLfUoRI5xviLF+k%1Zfacf1)Vq*oHN(eUPX0r#', 1);
INSERT INTO "User" (id, first_name, last_name, email, password, "id_Role") VALUES (default, 'Christian Clark MD', 'Pierce','andersonjanet@hotmail.com', '5m0UafTtfl6RtEwA^J%EB6Q(mzZ_)DOmb7CEpu5l', 1);