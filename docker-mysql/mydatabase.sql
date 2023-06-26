
USE MYDATABASE;


-- Create the 'EVENTS' table
CREATE TABLE EVENTS (
  EVENT_DATE DATE NOT NULL,
  EVENT_NAME VARCHAR(50) NOT NULL
);

-- Insert sample data into the 'EVENTS' table
INSERT INTO EVENTS (event_date, event_name) VALUES
  ('2023-06-01', 'succeded'),
  ('2023-06-02', 'succeded'),
  ('2023-06-03', 'succeded'),
  ('2023-06-04', 'failed'),
  ('2023-06-05', 'failed'),
  ('2023-06-06', 'failed'),
  ('2023-06-07', 'succeded');

