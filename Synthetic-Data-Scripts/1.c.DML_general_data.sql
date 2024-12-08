-- Synthetic data for:
-- 1. Branch: 20 branches
-- 2. Employee: 52 employees
-- 3. Order Status (Lookup Table): 5 order statuses
-- 4. Payment Method (Lookup Table): 11 payment methods
-- 5. Product: 100 products

-- More synthetic data is available in separate files for the following:
-- 1. Customer: 1,200 customers
-- 2. customerOrder: 50,000 orders
-- 3. orderDetail: 199,566 order details
-- 4. payment: 180,809 payments

-- Insert branches
INSERT INTO siwaka_dishes.branch (branchCode, phone, addressLine1, addressLine2, postalCode, county, subCounty) VALUES
(1, '0700000001', 'Westlands Commercial Centre', 'Ring Road, Westlands', '00100', 'Nairobi', 'Westlands'),
(2, '0700000002', 'Yaya Centre', 'Argwings Kodhek Rd', '00100', 'Nairobi', 'Kilimani'),
(3, '0700000003', 'Thika Road Mall', 'Thika Road', '00100', 'Nairobi', 'Kasarani'),
(4, '0700000004', 'Taj Mall', 'Outer Ring Rd', '00100', 'Nairobi', 'Embakasi'),
(5, '0700000005', 'Galleria Mall', 'Langata Rd', '00100', 'Nairobi', 'Langata'),
(6, '0700000006', 'The Junction Mall', 'Ngong Rd', '00100', 'Nairobi', 'Dagoretti'),
(7, '0700000007', 'Garden City Mall', 'Thika Road', '00100', 'Nairobi', 'Ruaraka'),
(8, '0700000008', 'Sarit Centre', 'Karuna Rd', '00100', 'Nairobi', 'Starehe'),
(9, '0700000009', 'Kamukunji Market', 'Kamukunji Rd', '00100', 'Nairobi', 'Kamukunji'),
(10, '0700000010', 'Makadara Law Courts', 'Jogoo Rd', '00100', 'Nairobi', 'Makadara'),
(11, '0700000011', 'Mathare Hospital', 'Hospital Rd', '00100', 'Nairobi', 'Mathare'),
(12, '0700000012', 'Roy Sambu Shopping Centre', 'Roy Sambu Rd', '00100', 'Nairobi', 'Roy Sambu'),
(13, '0700000013', 'Kibra Social Hall', 'Kibra Dr', '00100', 'Nairobi', 'Kibra'),
(14, '0700000014', 'Kangemi Market', 'Waiyaki Way', '00100', 'Nairobi', 'Kangemi'),
(15, '0700000015', 'Githurai Market', 'Githurai Rd', '00100', 'Nairobi', 'Githurai'),
(16, '0710000001', 'City Mall', 'Nyali Rd', '80100', 'Mombasa', 'Nyali'),
(17, '0710000002', 'Mega Plaza', 'Oginga Odinga Rd', '40100', 'Kisumu', 'Kisumu Central'),
(18, '0710000003', 'Westside Mall', 'Kenya Rd', '20100', 'Nakuru', 'Nakuru Town East'),
(19, '0710000004', 'Rupa Mall', 'Uganda Rd', '30100', 'Uasin Gishu', 'Kesses'),
(20, '0710000005', 'Nyeri Mall', 'Gakere Rd', '10100', 'Nyeri', 'Nyeri Central');

-- Insert data into employee Table
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (1, 'Marie', 'Mandela', 'mmandela51@siwakadishes.co.ke', 6, 'Cook');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (2, 'Thabo', 'Mohammed', 'tmohammed24@siwakadishes.co.ke', 7, 'Waiter');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (3, 'Jean', 'Ndayishimiye', 'jndayishimiye12@siwakadishes.co.ke', 8, 'Hostess');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (4, 'Achieng', 'Hussein', 'ahussein16@siwakadishes.co.ke', 9, 'Security Guard');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (5, 'Jacqueline', 'Hussein', 'jhussein97@siwakadishes.co.ke', 8, 'Sous Chef');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (6, 'Patricia', 'Hassan', 'phassan43@siwakadishes.co.ke', 7, 'Dishwasher');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (7, 'Patricia', 'Kabila', 'pkabila52@siwakadishes.co.ke', 10, 'Cleaner');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (8, 'Jacqueline', 'Munyoki', 'jmunyoki19@siwakadishes.co.ke', 10, 'Manager');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (9, 'Patricia', 'Kabongo', 'pkabongo92@siwakadishes.co.ke', 4, 'Assistant Manager');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (10, 'Alain', 'Ibrahim', 'aibrahim84@siwakadishes.co.ke', 7, 'Host');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (11, 'Felix', 'Munyao', 'fmunyao90@siwakadishes.co.ke', 4, 'Manager');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (12, 'Wanjiku', 'Mugisha', 'wmugisha81@siwakadishes.co.ke', 9, 'Chef');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (13, 'Josephine', 'Munee', 'jmunee34@siwakadishes.co.ke', 1, 'Waiter');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (14, 'Ngozi', 'Mugisha', 'nmugisha12@siwakadishes.co.ke', 9, 'Waitress');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (15, 'Alaine', 'Kabila', 'akabila86@siwakadishes.co.ke', 2, 'Manager');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (16, 'Kiptoo', 'Mukasa', 'kmukasa79@siwakadishes.co.ke', 9, 'Waiter');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (17, 'Pierrette', 'Omondi', 'pomondi3@siwakadishes.co.ke', 2, 'Receptionist');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (18, 'Gbemisola', 'Bizimana', 'gbizimana23@siwakadishes.co.ke', 6, 'Manager');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (19, 'Adisa', 'Ochieng', 'aochieng30@siwakadishes.co.ke', 1, 'Cleaner');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (20, 'Patricia', 'Munywe', 'pmunywe20@siwakadishes.co.ke', 4, 'Bartender');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (21, 'Thabo', 'Lumumba', 'tlumumba27@siwakadishes.co.ke', 10, 'Cashier');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (22, 'Zanele', 'Ochieng', 'zochieng98@siwakadishes.co.ke', 9, 'Receptionist');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (23, 'Binta', 'Ndayishimiye', 'bndayishimiye21@siwakadishes.co.ke', 1, 'Cleaner');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (24, 'Michel', 'Mugabe', 'mmugabe59@siwakadishes.co.ke', 1, 'Chef');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (25, 'Emmanuel', 'Mbeki', 'embeki45@siwakadishes.co.ke', 2, 'Chef');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (26, 'Jean', 'Mandela', 'jmandela47@siwakadishes.co.ke', 4, 'Dishwasher');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (27, 'Dayo', 'Munyua', 'dmunyua2@siwakadishes.co.ke', 3, 'Dishwasher');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (28, 'Jacques', 'Njoroge', 'jnjoroge22@siwakadishes.co.ke', 2, 'Sous Chef');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (29, 'Otieno', 'Mandela', 'omandela41@siwakadishes.co.ke', 5, 'Waitress');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (30, 'Patricia', 'Mbeki', 'pmbeki71@siwakadishes.co.ke', 8, 'Cashier');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (31, 'Claudine', 'Kariuki', 'ckariuki45@siwakadishes.co.ke', 5, 'Waitress');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (32, 'Pauline', 'Abdi', 'pabdi4@siwakadishes.co.ke', 1, 'Manager');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (33, 'Dayo', 'Zuma', 'dzuma74@siwakadishes.co.ke', 10, 'Assistant Manager');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (34, 'Amina', 'Munyui', 'amunyui84@siwakadishes.co.ke', 5, 'Sous Chef');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (35, 'Ifeanyi', 'Ali', 'iali66@siwakadishes.co.ke', 9, 'Receptionist');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (36, 'Pauline', 'Munzala', 'pmunzala5@siwakadishes.co.ke', 9, 'Cook');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (37, 'Emmanuelle', 'Munzala', 'emunzala22@siwakadishes.co.ke', 9, 'Bartender');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (38, 'Gbemisola', 'Munzala', 'gmunzala3@siwakadishes.co.ke', 8, 'Cook');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (39, 'Femi', 'Abdullahi', 'fabdullahi14@siwakadishes.co.ke', 8, 'Waiter');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (40, 'Chiamaka', 'Munyui', 'cmunyui32@siwakadishes.co.ke', 10, 'Receptionist');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (41, 'Alaine', 'Mbeki', 'ambeki56@siwakadishes.co.ke', 1, 'Sous Chef');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (42, 'Mutiso', 'Munywe', 'mmunywe70@siwakadishes.co.ke', 7, 'Cook');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (43, 'Emmanuelle', 'Mandela', 'emandela87@siwakadishes.co.ke', 8, 'Sous Chef');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (44, 'Jeanne', 'Abdi', 'jabdi1@siwakadishes.co.ke', 7, 'Cook');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (45, 'Zanele', 'Ibrahim', 'zibrahim2@siwakadishes.co.ke', 5, 'Waitress');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (46, 'Emmanuel', 'Munzala', 'emunzala80@siwakadishes.co.ke', 6, 'Bartender');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (47, 'Jelani', 'Nkurunziza', 'jnkurunziza12@siwakadishes.co.ke', 10, 'Sous Chef');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (48, 'Marie', 'Mutua', 'mmutua21@siwakadishes.co.ke', 7, 'Waitress');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (49, 'Binta', 'Mbeki', 'bmbeki89@siwakadishes.co.ke', 1, 'Cook');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (50, 'Felicite', 'Adan', 'fadan91@siwakadishes.co.ke', 5, 'Assistant Manager');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (51, 'Jelani', 'Kagame', 'jkagame84@siwakadishes.co.ke', 10, 'Cashier');
INSERT INTO siwaka_dishes.employee (employeeNumber, firstName, lastName, email, branchCode, jobTitle) VALUES (52, 'Zanele', 'Munyao', 'zmunyao70@siwakadishes.co.ke', 4, 'Waiter');
UPDATE siwaka_dishes.employee SET reportsTo = 8 WHERE employeeNumber = 13;
UPDATE siwaka_dishes.employee SET reportsTo = 11 WHERE employeeNumber = 19;
UPDATE siwaka_dishes.employee SET reportsTo = 24 WHERE employeeNumber = 23;
UPDATE siwaka_dishes.employee SET reportsTo = 28 WHERE employeeNumber = 24;
UPDATE siwaka_dishes.employee SET reportsTo = 25 WHERE employeeNumber = 32;
UPDATE siwaka_dishes.employee SET reportsTo = 34 WHERE employeeNumber = 41;
UPDATE siwaka_dishes.employee SET reportsTo = 47 WHERE employeeNumber = 49;
UPDATE siwaka_dishes.employee SET reportsTo = 32 WHERE employeeNumber = 15;
UPDATE siwaka_dishes.employee SET reportsTo = 15 WHERE employeeNumber = 17;
UPDATE siwaka_dishes.employee SET reportsTo = 28 WHERE employeeNumber = 25;
UPDATE siwaka_dishes.employee SET reportsTo = 9 WHERE employeeNumber = 28;
UPDATE siwaka_dishes.employee SET reportsTo = 8 WHERE employeeNumber = 27;
UPDATE siwaka_dishes.employee SET reportsTo = 8 WHERE employeeNumber = 9;
UPDATE siwaka_dishes.employee SET reportsTo = 34 WHERE employeeNumber = 11;
UPDATE siwaka_dishes.employee SET reportsTo = 47 WHERE employeeNumber = 20;
UPDATE siwaka_dishes.employee SET reportsTo = 18 WHERE employeeNumber = 26;
UPDATE siwaka_dishes.employee SET reportsTo = 9 WHERE employeeNumber = 52;
UPDATE siwaka_dishes.employee SET reportsTo = 43 WHERE employeeNumber = 29;
UPDATE siwaka_dishes.employee SET reportsTo = 28 WHERE employeeNumber = 31;
UPDATE siwaka_dishes.employee SET reportsTo = 50 WHERE employeeNumber = 34;
UPDATE siwaka_dishes.employee SET reportsTo = 34 WHERE employeeNumber = 45;
UPDATE siwaka_dishes.employee SET reportsTo = 8 WHERE employeeNumber = 50;
UPDATE siwaka_dishes.employee SET reportsTo = 28 WHERE employeeNumber = 1;
UPDATE siwaka_dishes.employee SET reportsTo = 9 WHERE employeeNumber = 18;
UPDATE siwaka_dishes.employee SET reportsTo = 25 WHERE employeeNumber = 46;
UPDATE siwaka_dishes.employee SET reportsTo = 34 WHERE employeeNumber = 2;
UPDATE siwaka_dishes.employee SET reportsTo = 18 WHERE employeeNumber = 6;
UPDATE siwaka_dishes.employee SET reportsTo = 18 WHERE employeeNumber = 10;
UPDATE siwaka_dishes.employee SET reportsTo = 43 WHERE employeeNumber = 42;
UPDATE siwaka_dishes.employee SET reportsTo = 18 WHERE employeeNumber = 44;
UPDATE siwaka_dishes.employee SET reportsTo = 47 WHERE employeeNumber = 48;
UPDATE siwaka_dishes.employee SET reportsTo = 18 WHERE employeeNumber = 3;
UPDATE siwaka_dishes.employee SET reportsTo = 12 WHERE employeeNumber = 5;
UPDATE siwaka_dishes.employee SET reportsTo = 33 WHERE employeeNumber = 30;
UPDATE siwaka_dishes.employee SET reportsTo = 12 WHERE employeeNumber = 38;
UPDATE siwaka_dishes.employee SET reportsTo = 15 WHERE employeeNumber = 39;
UPDATE siwaka_dishes.employee SET reportsTo = 11 WHERE employeeNumber = 43;
UPDATE siwaka_dishes.employee SET reportsTo = 28 WHERE employeeNumber = 4;
UPDATE siwaka_dishes.employee SET reportsTo = 15 WHERE employeeNumber = 12;
UPDATE siwaka_dishes.employee SET reportsTo = 43 WHERE employeeNumber = 14;
UPDATE siwaka_dishes.employee SET reportsTo = 15 WHERE employeeNumber = 16;
UPDATE siwaka_dishes.employee SET reportsTo = 12 WHERE employeeNumber = 22;
UPDATE siwaka_dishes.employee SET reportsTo = 5 WHERE employeeNumber = 35;
UPDATE siwaka_dishes.employee SET reportsTo = 32 WHERE employeeNumber = 36;
UPDATE siwaka_dishes.employee SET reportsTo = 15 WHERE employeeNumber = 37;
UPDATE siwaka_dishes.employee SET reportsTo = 50 WHERE employeeNumber = 7;
UPDATE siwaka_dishes.employee SET reportsTo = 41 WHERE employeeNumber = 8;
UPDATE siwaka_dishes.employee SET reportsTo = 33 WHERE employeeNumber = 21;
UPDATE siwaka_dishes.employee SET reportsTo = 5 WHERE employeeNumber = 33;
UPDATE siwaka_dishes.employee SET reportsTo = 32 WHERE employeeNumber = 40;
UPDATE siwaka_dishes.employee SET reportsTo = 28 WHERE employeeNumber = 47;
UPDATE siwaka_dishes.employee SET reportsTo = 18 WHERE employeeNumber = 51;

-- Insert data into Order Status Lookup Table
INSERT INTO siwaka_dishes.orderStatus (orderStatusID, status) VALUES 
(1, 'Pending'),
(2, 'Processing'),
(3, 'In Transit'),
(4, 'Delivered'),
(5, 'Cancelled');

-- Insert Payment Methods
INSERT INTO siwaka_dishes.paymentMethod (paymentMethodID, paymentMethod) VALUES 
(1, 'Cash'),
(2, 'Debit Card'),
(3, 'Credit Card'),
(4, 'Bank Transfer'),
(5, 'Cheque'),
(6, 'Mobile Money - Safaricom M-Pesa'),
(7, 'Mobile Money - Airtel Money'),
(8, 'Mobile Money - Tigo Pesa'),
(9, 'Mobile Money - Equitel'),
(10, 'Mobile Money - MTN Mobile Money'),
(11, 'Mobile Money - Orange Money');

-- Insert products into product Table
INSERT INTO siwaka_dishes.product (productCode, productName, productDescription, quantityInStock, costOfProduction, sellingPrice) VALUES
('P001', 'Ugali', 'A staple food made from maize flour, cooked with water to a dough-like consistency.', 100, 10.00, 20.00),
('P002', 'Sukuma Wiki', 'Collard greens sautéed with onions and tomatoes.', 100, 10.00, 20.00),
('P003', 'Nyama Choma', 'Grilled meat, typically goat or beef, seasoned with salt and spices.', 50, 150.00, 300.00),
('P004', 'Chapati', 'Flatbread made from wheat flour, cooked on a griddle.', 100, 5.00, 20.00),
('P005', 'Githeri', 'A traditional Kikuyu dish of boiled maize and beans.', 80, 30.00, 70.00),
('P006', 'Pilau', 'Spiced rice dish cooked with meat, typically beef or chicken.', 70, 100.00, 200.00),
('P007', 'Mukimo', 'Mashed potatoes mixed with maize, beans, and greens.', 90, 40.00, 80.00),
('P008', 'Kachumbari', 'Fresh tomato and onion salad with cilantro and lime.', 100, 10.00, 30.00),
('P009', 'Samosa', 'Deep-fried pastry filled with spiced meat or vegetables.', 100, 20.00, 50.00),
('P010', 'Mandazi', 'Fried dough snack, similar to a doughnut.', 100, 5.00, 20.00),
('P011', 'Matoke', 'Steamed or boiled plantains, often served with a meat stew.', 70, 30.00, 60.00),
('P012', 'Tilapia Fry', 'Fried whole tilapia fish, seasoned with spices.', 50, 200.00, 350.00),
('P013', 'Omena', 'Small dried fish, typically fried with onions and tomatoes.', 80, 30.00, 70.00),
('P014', 'Mutura', 'Kenyan sausage made from minced meat, blood, and spices.', 60, 70.00, 150.00),
('P015', 'Maharagwe', 'Stewed beans cooked with coconut milk and spices.', 90, 30.00, 60.00),
('P016', 'Kuku Choma', 'Grilled chicken, marinated with spices.', 50, 150.00, 300.00),
('P017', 'Bhajia', 'Potato fritters, deep-fried in a spiced gram flour batter.', 100, 20.00, 50.00),
('P018', 'Mishkaki', 'Skewered and grilled meat, typically beef or chicken.', 70, 100.00, 200.00),
('P019', 'Viazi Karai', 'Potato slices coated in a spiced batter and deep-fried.', 100, 10.00, 30.00),
('P020', 'Ndengu', 'Green grams (mung beans) cooked with onions and tomatoes.', 90, 30.00, 60.00),
('P021', 'Wali wa Nazi', 'Rice cooked with coconut milk.', 80, 30.00, 70.00),
('P022', 'Mbaazi', 'Pigeon peas cooked in coconut milk.', 70, 30.00, 60.00),
('P023', 'Kaimati', 'Sweet dumplings coated in sugar syrup.', 100, 5.00, 20.00),
('P024', 'Mahamri', 'Sweet, fried bread, similar to mandazi.', 100, 5.00, 20.00),
('P025', 'Uji', 'Fermented porridge made from millet or sorghum flour.', 100, 10.00, 30.00),
('P026', 'Supa ya Ndizi', 'Banana soup made with green bananas, meat, and spices.', 70, 30.00, 70.00),
('P027', 'Nyama Stew', 'Beef stew cooked with potatoes, carrots, and peas.', 60, 100.00, 200.00),
('P028', 'Matumbo', 'Tripe stew cooked with onions, tomatoes, and spices.', 50, 70.00, 150.00),
('P029', 'Sukuma na Ugali', 'Collard greens served with ugali.', 100, 20.00, 50.00),
('P030', 'Kuku Stew', 'Chicken stew cooked with potatoes, carrots, and peas.', 60, 100.00, 200.00),
('P031', 'Fish Curry', 'Fish cooked in a spiced coconut milk curry.', 50, 150.00, 300.00),
('P032', 'Mbuzi Choma', 'Grilled goat meat, seasoned with salt and spices.', 50, 200.00, 350.00),
('P033', 'Ugali na Sukuma', 'Ugali served with sautéed collard greens.', 100, 20.00, 50.00),
('P034', 'Kuku Fry', 'Fried chicken, marinated with spices.', 50, 150.00, 300.00),
('P035', 'Ndizi na Nyama', 'Green bananas cooked with meat and spices.', 70, 30.00, 70.00),
('P036', 'Maharagwe ya Nazi', 'Beans cooked in coconut milk.', 90, 30.00, 60.00),
('P037', 'Wali wa Kukaanga', 'Fried rice with vegetables and meat.', 80, 30.00, 70.00),
('P038', 'Supu ya Mbuzi', 'Goat soup cooked with spices.', 60, 70.00, 150.00),
('P039', 'Kuku na Wali', 'Chicken served with rice.', 70, 100.00, 200.00),
('P040', 'Nyama na Wali', 'Beef served with rice.', 60, 100.00, 200.00),
('P041', 'Matoke na Nyama', 'Plantains cooked with meat and spices.', 70, 30.00, 70.00),
('P042', 'Maharagwe na Wali', 'Beans served with rice.', 90, 30.00, 60.00),
('P043', 'Wali wa Pilau', 'Spiced rice cooked with meat.', 80, 30.00, 70.00),
('P044', 'Supu ya Kuku', 'Chicken soup cooked with spices.', 60, 70.00, 150.00),
('P045', 'Kuku na Chapati', 'Chicken served with chapati.', 70, 100.00, 200.00),
('P046', 'Nyama na Chapati', 'Beef served with chapati.', 60, 100.00, 200.00),
('P047', 'Matoke na Maharagwe', 'Plantains cooked with beans.', 70, 30.00, 70.00),
('P048', 'Maharagwe na Chapati', 'Beans served with chapati.', 90, 30.00, 60.00),
('P049', 'Wali wa Nazi na Kuku', 'Coconut rice served with chicken.', 80, 30.00, 70.00),
('P050', 'Supu ya Nyama', 'Beef soup cooked with spices.', 60, 70.00, 150.00),
('P051', 'Kuku na Ugali', 'Chicken served with ugali.', 70, 100.00, 200.00),
('P052', 'Nyama na Ugali', 'Beef served with ugali.', 60, 100.00, 200.00),
('P053', 'Matoke na Sukuma', 'Plantains cooked with collard greens.', 70, 30.00, 70.00),
('P054', 'Maharagwe na Sukuma', 'Beans served with collard greens.', 90, 30.00, 60.00),
('P055', 'Wali wa Nazi na Nyama', 'Coconut rice served with beef.', 80, 30.00, 70.00),
('P056', 'Supu ya Samaki', 'Fish soup cooked with spices.', 60, 70.00, 150.00),
('P057', 'Kuku na Matoke', 'Chicken served with plantains.', 70, 100.00, 200.00),
('P058', 'Nyama na Matoke', 'Beef served with plantains.', 60, 100.00, 200.00),
('P059', 'Matoke na Maharagwe', 'Plantains cooked with beans.', 70, 30.00, 70.00),
('P060', 'Maharagwe na Matoke', 'Beans served with plantains.', 90, 30.00, 60.00),
('P061', 'Wali wa Nazi na Samaki', 'Coconut rice served with fish.', 80, 30.00, 70.00),
('P062', 'Supu ya Kuku na Wali', 'Chicken soup served with rice.', 60, 70.00, 150.00),
('P063', 'Kuku na Maharagwe', 'Chicken served with beans.', 70, 100.00, 200.00),
('P064', 'Nyama na Maharagwe', 'Beef served with beans.', 60, 100.00, 200.00),
('P065', 'Matoke na Wali', 'Plantains served with rice.', 70, 30.00, 70.00),
('P066', 'Maharagwe na Wali', 'Beans served with rice.', 90, 30.00, 60.00),
('P067', 'Wali wa Nazi na Maharagwe', 'Coconut rice served with beans.', 80, 30.00, 70.00),
('P068', 'Supu ya Nyama na Wali', 'Beef soup served with rice.', 60, 70.00, 150.00),
('P069', 'Kuku na Sukuma', 'Chicken served with collard greens.', 70, 100.00, 200.00),
('P070', 'Nyama na Sukuma', 'Beef served with collard greens.', 60, 100.00, 200.00),
('P071', 'Doro Wat', 'Spicy chicken stew made with berbere spice mix.', 50, 150.00, 300.00),
('P072', 'Injera', 'Sourdough flatbread made from teff flour.', 100, 10.00, 20.00),
('P073', 'Kitfo', 'Minced raw beef seasoned with spices and clarified butter.', 60, 200.00, 400.00),
('P074', 'Shiro', 'Chickpea stew seasoned with berbere and other spices.', 80, 30.00, 70.00),
('P075', 'Tibs', 'Sautéed meat, typically beef or lamb, with onions and peppers.', 70, 100.00, 200.00),
('P076', 'Misir Wat', 'Spicy lentil stew made with berbere spice mix.', 90, 30.00, 60.00),
('P077', 'Gomen', 'Collard greens cooked with onions, garlic, and ginger.', 100, 20.00, 50.00),
('P078', 'Atayef', 'Sweet stuffed pancakes, typically filled with nuts or cream.', 100, 10.00, 30.00),
('P079', 'Chechebsa', 'Flatbread pieces mixed with spiced clarified butter.', 80, 20.00, 50.00),
('P080', 'Firfir', 'Shredded injera mixed with spicy sauce.', 70, 30.00, 70.00),
('P081', 'Jollof Rice', 'A popular West African rice dish cooked with tomatoes, onions, and spices.', 80, 30.00, 70.00),
('P082', 'Egusi Soup', 'A Nigerian soup made with melon seeds, leafy vegetables, and meat or fish.', 70, 40.00, 80.00),
('P083', 'Fufu', 'A starchy side dish made from cassava, yams, or plantains, pounded into a dough-like consistency.', 100, 20.00, 50.00),
('P084', 'Suya', 'Spicy skewered meat, typically beef or chicken, grilled and served with onions and tomatoes.', 60, 50.00, 100.00),
('P085', 'Kelewele', 'Spicy fried plantains, seasoned with ginger, garlic, and chili.', 90, 20.00, 50.00),
('P086', 'Banku', 'A fermented corn and cassava dough, cooked into a smooth, starchy side dish.', 80, 30.00, 70.00),
('P087', 'Moi Moi', 'A steamed bean pudding made from blended black-eyed peas, onions, and spices.', 70, 20.00, 50.00),
('P088', 'Banga Soup', 'A rich and flavorful Nigerian soup made from palm nut extract, meat, and spices.', 60, 50.00, 100.00),
('P089', 'Waakye', 'A Ghanaian dish of rice and beans cooked with millet leaves, served with various sides.', 80, 30.00, 70.00),
('P090', 'Akara', 'Deep-fried bean cakes made from black-eyed peas, onions, and spices.', 100, 20.00, 50.00),
('P091', 'Bunny Chow', 'A hollowed-out loaf of bread filled with curry, typically made with chicken, lamb, or beans.', 70, 40.00, 80.00),
('P092', 'Bobotie', 'A spiced minced meat dish baked with an egg-based topping, often served with yellow rice.', 60, 50.00, 100.00),
('P093', 'Biltong', 'Cured and dried meat, typically beef or game, seasoned with spices.', 80, 100.00, 200.00),
('P094', 'Boerewors', 'A traditional South African sausage made from minced beef and pork, seasoned with spices.', 90, 50.00, 100.00),
('P095', 'Chakalaka', 'A spicy vegetable relish made with tomatoes, onions, peppers, and beans.', 100, 20.00, 50.00),
('P096', 'Pap', 'A porridge made from maize meal, often served as a side dish with meat and gravy.', 100, 10.00, 30.00),
('P097', 'Sosaties', 'Marinated meat skewers, typically made with lamb or chicken, grilled and served with apricots.', 70, 50.00, 100.00),
('P098', 'Malva Pudding', 'A sweet, spongy dessert made with apricot jam and served with a creamy sauce.', 80, 30.00, 70.00),
('P099', 'Potjiekos', 'A slow-cooked stew made with meat, vegetables, and spices, traditionally cooked in a cast-iron pot.', 60, 50.00, 100.00),
('P100', 'Vetkoek', 'Deep-fried dough balls, often filled with minced meat or served with syrup.', 90, 20.00, 50.00);
