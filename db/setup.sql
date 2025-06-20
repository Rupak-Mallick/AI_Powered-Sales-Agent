
CREATE USER agent_user WITH PASSWORD 'demo_password_123';
ALTER USER agent_user CREATEDB;

CREATE DATABASE sales_agent_db WITH OWNER agent_user;

\c sales_agent_db;

CREATE TABLE IF NOT EXISTS chat_memory (
    id SERIAL PRIMARY KEY,
    user_input TEXT,
    agent_response TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    name TEXT,
    category TEXT,
    price DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS sales (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(id),
    quantity INTEGER,
    sale_date TIMESTAMP
);

-- Insert Data
INSERT INTO products (name, category, price) VALUES 
('Laptop A', 'Electronics', 1000),
('Phone B', 'Electronics', 700),
('Chair C', 'Furniture', 150)
ON CONFLICT DO NOTHING;

INSERT INTO sales (product_id, quantity, sale_date) VALUES
(1, 3, '2025-06-01 12:00:00'),
(2, 2, '2025-06-02 14:30:00'),
(1, 1, '2025-06-03 15:00:00'),
(3, 5, '2025-06-10 11:00:00')
ON CONFLICT DO NOTHING;
