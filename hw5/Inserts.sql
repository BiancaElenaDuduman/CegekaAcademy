INSERT INTO CarDealership.dbo.Car_Brand ([name])
	VALUES 
	('Subaru'),
	('Audi'),
	('Mercedes'),
	('BMW'),
	('Alfa Romeo');

INSERT INTO CarDealership.dbo.ActualCarFeatures(leather_seats, air_con, heated_seats, sunroof, remote_start, bluetooth, navigation)
	VALUES 
	(1, 1, 1, 1, 1, 1, 1),
	(0, 0, 1, 1, 1, 1, 1),
	(1, 0, 0, 0, 0, 1, 1),
	(1, 0, 1, 1, 0, 0, 0),
	(1, 1, 0, 1, 0, 1, 0);

INSERT INTO CarDealership.dbo.Car_Model ([brand_id], [name], [features_id])
	VALUES 
	(1,'Legacy', 1),
	(1, 'Impreza', 2),
	(2, 'e-tron', 1),
	(4, 'i series', 3),
	(3, 'Targa Florio', 4);

INSERT INTO CarDealership.dbo.Cars_on_Sale (model_id, [year], [price])
	VALUES
	(1, 2021, 300000.0),
	(2, 1990, 700000.0),
	(3, 2000, 400000.0),
	(4, 2006, 3606600.0);

INSERT INTO CarDealership.dbo.Cars_Sold (model_id, customer_id, date_sold)
	VALUES
	(1, 1, '2021-01-02'),
	(4, 2, '2020-05-23'),
	(3, 4, '2020-12-04');


INSERT INTO CarDealership.dbo.Customer([first_name], [last_name], [email], [phone], [address], [car_bought], [car_interest])
	VALUES
	('Romeo', 'Juliet', 'romeo.juliet@gmail.com', '0823234567', 'NY, Kansas, Chevie Street, no 4', 1, 4),
	('Andra', 'Adam', 'andra230@gmail.com', '0823333567', 'Germany, Asfskkf, Bujie Street, no 111', 4, null),
	('Adam', 'Raucu', 'adam.raucu98@gmail.com', '0833334567', 'Romania, Pascani, Unirii Street, no 23', null, 2),
	('Rica', 'Samadaul', 'ricanulica@gmail.com', '0823222567', 'Romania, Bucharest, Izvorul Street, bl 4, sc A, ap 2', 3, null);


INSERT INTO CarDealership.dbo.PossibleFeatures (features)
	VALUES
	('Air conditioner, leather seats, fabric seats, moonroof/sunroof, backup camera, remote start, blind spot monitoring, navigation system, bluetooth');
SELECT * FROM PossibleFeatures;