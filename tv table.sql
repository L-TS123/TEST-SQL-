CREATE TABLE tv (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	catalog_number TEXT NOT NULL,
	brand TEXT NOT NULL CHECK (brand = 'LG' OR brand = 'SAMSUNG' OR brand = 'SONY'),
	model TEXT UNIQUE NOT NULL,
	screen_size INTEGER NOT NULL,
	resolution TEXT NOT NULL CHECK (resolution = '4K' OR resolution = '8K' OR resolution = 'FULL HD'),
	price REAL NOT NULL,
	stock_quantity INTEGER NOT NULL,
	release_year TEXT NOT NULL,
	smart_tv TEXT NOT NULL CHECK (smart_tv = 'YES' OR smart_tv = 'NO'),
	os TEXT DEFAULT NULL, 
	panel_type TEXT NOT NULL CHECK (panel_type = 'LED' OR panel_type = 'OLED' OR panel_type = 'QLED')
);

INSERT INTO tv (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type) VALUES
	(432061, 'SAMSUNG', 'ue65m70h', 65, '4K', 2190, 4, '1/1/2026', 'YES', 'android', 'LED'),
	(433531, 'LG', '75qned84b6t', 75, '4K', 3494, 2, '10/10/2026', 'YES', 'android', 'OLED');
INSERT INTO tv (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, panel_type) VALUES
	(103162, 'SONY', 'it32nq3270', 32, 'FULL HD', 295, 1, '23/11/2015', 'NO', 'QLED');


