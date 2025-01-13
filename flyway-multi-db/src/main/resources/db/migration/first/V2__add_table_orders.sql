CREATE TABLE IF NOT EXISTS items (
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
    id INTEGER NOT NULL PRIMARY KEY,
    customer_id INTEGER NOT NULL REFERENCES customers (id),
    item_id INTEGER NOT NULL REFERENCES items (id),
    number INTEGER NOT NULL,
    ordered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
