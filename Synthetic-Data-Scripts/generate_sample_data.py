# Step 1: pip install mysql-connector-python
import random
from datetime import datetime, timedelta
import mysql.connector

# Connect to MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="student",
    password="5trathm0re",
    database="foodstuff",
    port=3307
)
cursor = conn.cursor()

# Predefined Lists of Kenyan Names
first_names = ["James", "Mary", "John", "Grace", "Daniel", "Faith", "Kevin", "Anne", "Brian", "Cynthia", "George", "Irene", "Lilian", "Peter", "Mercy", "Victor", "Joseph", "Caroline", "Christine", "David", "Brenda", "Samuel", "Lucy", "Paul", "Esther", "Michael", "Dorcas", "Charles", "Pamela", "Kennedy", "Tabitha", "Erick", "Gladys", "Samson", "Eunice", "Nicholas", "Rose", "Elijah", "Winnie", "Isaac", "Sharon", "Moses", "Priscilla", "Joshua", "Hellen", "Caleb", "Ruth"]
last_names = ["Mwangi", "Omondi", "Mutiso", "Wanjiku", "Koech", "Otieno", "Cheruiyot", "Njoroge", "Kimani", "Kilonzo", "Odera", "Wafula", "Kipchumba", "Nyongesa", "Muli", "Kamau", "Mutua", "Karanja", "Muthoni", "Mureithi", "Kemunto", "Moraa", "Mugo", "Waweru", "Kamande", "Kariuki", "Macharia", "Muthama", "Kinyua", "Kamau", "Mwende", "Kariuki"]

# Helper Functions
def random_date(start, end):
    """Generate a random date between start and end dates."""
    delta = end - start
    random_days = random.randint(0, delta.days)
    return start + timedelta(days=random_days)

def random_phone():
    """Generate a random Kenyan phone number."""
    return f"07{random.randint(0, 9)}{random.randint(1000000, 9999999)}"

# Step 1: Add More Customers with Random Names
customers = []
for i in range(1, 801):  # Generate 800 customers
    customer_name = f"Business_{i}"
    contact_last_name = random.choice(last_names)
    contact_first_name = random.choice(first_names)
    phone = random_phone()
    address_line1 = f"Address_{i}"
    city = random.choice(["Nairobi", "Mombasa", "Kisumu", "Eldoret", "Nakuru", "Thika", "Nyeri", "Machakos", "Garissa", "Kakamega"])
    postal_code = f"{random.randint(10000, 99999)}"
    county = random.choice(["Nairobi", "Kiambu", "Mombasa", "Uasin Gishu", "Kisumu", "Nyeri", "Machakos", "Garissa", "Kakamega"])
    sales_rep = random.randint(1, 40)  # Assuming 40 employees
    customers.append((customer_name, contact_last_name, contact_first_name, phone, address_line1, city, postal_code, county, sales_rep))

cursor.executemany(
    "INSERT INTO Customers (customerName, contactLastName, contactFirstName, phone, addressLine1, city, postalCode, county, salesRepEmployeeNumber) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)",
    customers
)

# Step 2: Add More Employees with Random Names
employees = []
for i in range(1, 41):  # Generate 40 employees
    last_name = random.choice(last_names)
    first_name = random.choice(first_names)
    email = f"{first_name.lower()}.{last_name.lower()}@foodstuff.co.ke"
    office_code = random.randint(1, 6)  # Assuming 6 offices
    job_title = random.choice(["Sales Representative", "Operations Manager", "Supervisor"])
    employees.append((last_name, first_name, email, office_code, job_title))

cursor.executemany(
    "INSERT INTO Employees (lastName, firstName, email, officeCode, jobTitle) VALUES (%s, %s, %s, %s, %s)",
    employees
)

# Step 3: Add More Orders
orders = []
start_date = datetime(2023, 1, 1)
end_date = datetime(2024, 12, 31)
for i in range(1, 1001):  # Generate 1000 orders
    order_date = random_date(start_date, end_date)
    required_date = order_date + timedelta(days=random.randint(1, 10))
    shipped_date = required_date if random.choice([True, False]) else None
    status = random.choice(["Shipped", "Processing", "On Hold"])
    customer_number = random.randint(1, 200)
    orders.append((order_date, required_date, shipped_date, status, customer_number))

cursor.executemany(
    "INSERT INTO Orders (orderDate, requiredDate, shippedDate, status, customerNumber) VALUES (%s, %s, %s, %s, %s)",
    orders
)

# Step 4: Add More Order Details
order_details = []
for i in range(1, 10001):  # Generate 10,000 order details
    order_number = random.randint(1, 1000)
    product_code = f"FOOD{random.randint(1, 50):03}"
    quantity_ordered = random.randint(1, 100)
    price_each = round(random.uniform(50, 500), 2)
    order_details.append((order_number, product_code, quantity_ordered, price_each))

cursor.executemany(
    "INSERT INTO OrderDetails (orderNumber, productCode, quantityOrdered, priceEach) VALUES (%s, %s, %s, %s)",
    order_details
)

# Step 5: Add More Payments
payments = []
for i in range(1, 1001):  # Generate 1000 payments
    customer_number = random.randint(1, 200)
    order_number = random.randint(1, 1000)
    payment_date = random_date(start_date, end_date)
    amount = round(random.uniform(500, 10000), 2)
    payment_method = random.choice(["Mpesa", "Bank Transfer", "Cash"])
    payments.append((customer_number, order_number, payment_date, amount, payment_method))

cursor.executemany(
    "INSERT INTO Payments (customerNumber, orderNumber, paymentDate, amount, paymentMethod) VALUES (%s, %s, %s, %s, %s)",
    payments
)

# Commit and Close
conn.commit()
cursor.close()
conn.close()

print("Large dataset with random names successfully inserted!")
