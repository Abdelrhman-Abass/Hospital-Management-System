
-- 1)List the name of the patients that have symptoms for cancer
SELECT pat_name
FROM Patientinfo p
WHERE EXISTS (
    SELECT 1
    FROM Assist a
    INNER JOIN Labinfo l ON a.lab_id = l.lab_id
    WHERE a.pat_id = p.pat_id AND l.diag_details LIKE '%Cancer%'
)

-- 2)List the appointments that had been scheduled so far with doctor Heba
SELECT schedinfo.app_date
FROM schedinfo
INNER JOIN doctorinfo ON schedinfo.doc_id = doctorinfo.doc_id
WHERE doctorinfo.doc_fname = 'Heba';


-- 3)List the name of the staff that has been working with Dr Abdelrhman
SELECT si.staff_Name
FROM staffinfo AS si
INNER JOIN doc_staff AS ds ON si.staff_id = ds.staff_id
INNER JOIN doctorinfo AS di ON ds.doc_id = di.doc_id
WHERE di.doc_fname = 'Abdelrhman';

