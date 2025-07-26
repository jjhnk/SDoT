CREATE TABLE IF NOT EXISTS sdot_temp_humi (
    serial_no TEXT,
    sensing_time TIMESTAMP,
    region TEXT,
    autonomous_district TEXT,
    administrative_district TEXT,
    max_temp FLOAT,
    avg_temp FLOAT,
    min_temp FLOAT,
    max_humi FLOAT,
    avg_humi FLOAT,
    min_humi FLOAT,
    PRIMARY KEY (serial_no, sensing_time)
);