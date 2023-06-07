
-- 1)List the number of appointments did Dr Heba younis had on 11th May 2015?
SELECT COUNT(*) AS num_appointments
FROM Schedinfo
WHERE doc_id = (SELECT doc_id FROM Doctorinfo WHERE doc_name = 'Heba younis')
AND app_date = '2012-06-12';



-- 2)List the name of the patients who have been treated by Dr Mahmoud mohamed?
SELECT pat_name
FROM Schedinfo
JOIN Patientinfo ON Schedinfo.pat_id = Patientinfo.pat_id
JOIN Doctorinfo ON Schedinfo.doc_id = Doctorinfo.doc_id
WHERE Doctorinfo.doc_name = 'Mahmoud mohamed';



-- 3)list all the patients who are admitted in room no 001 and having Malaria
SELECT DISTINCT pi.pat_fname
FROM Patientinfo pi
INNER JOIN Inpatientinfo ii ON pi.pat_id = ii.pat_id
INNER JOIN Assist a ON ii.pat_id = a.pat_id
INNER JOIN Labinfo l ON a.lab_id = l.lab_id
WHERE ii.room_num = '001' AND l.diag_details LIKE '%Malaria%'

