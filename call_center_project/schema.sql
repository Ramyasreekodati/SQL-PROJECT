-- schema.sql for Call Center SQLite database
CREATE TABLE IF NOT EXISTS call_center (
    id TEXT PRIMARY KEY,
    customer_name TEXT NOT NULL,
    sentiment TEXT,
    csat_score INTEGER,
    call_timestamp TEXT,
    reason TEXT,
    city TEXT,
    state TEXT,
    channel TEXT,
    response_time TEXT,
    call_duration_minutes INTEGER,
    call_center TEXT
);
