-- Write a SQL statement to retrieve the call times, duration, and first name for all calls not made to William Swift.

SELECT  calls."when", calls.duration, contacts.first_name 
FROM calls
INNER JOIN contacts 
  ON calls.contact_id = contacts.id
WHERE (contacts.first_name || ' ' || contacts.last_name) <> 'William Swift';