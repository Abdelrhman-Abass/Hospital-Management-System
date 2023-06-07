
-- 1)List the number of patients whose billing have been initiated between the year 2013 and 2016? 
SELECT YEAR(bill_datetime) AS year, MONTH(bill_datetime) AS month, COUNT(*) AS total_medical_charges
FROM Medicalcharge
WHERE bill_datetime >= '2013-01-01 00:00:00' AND bill_datetime < '2016-01-01 00:00:00'
GROUP BY YEAR(bill_datetime), MONTH(bill_datetime)
ORDER BY YEAR(bill_datetime), MONTH(bill_datetime);

-- 2)List the total bill of the patient with name Mahmoud hussin?

SELECT 
  bill_pat.bill_id,
  Medicalcharge.doc_charge,
  Medicalcharge.lab_charge,
  Medicalcharge.staff_charge,
  Medicalcharge.med_charge,
  Medicalcharge.room_charge,
  (doc_charge + lab_charge + staff_charge + med_charge + room_charge) AS total_bill
FROM 
  Medicalcharge
INNER JOIN 
  bill_pat ON Medicalcharge.bill_id = bill_pat.bill_id
INNER JOIN 
  patientinfo pat_info ON pat_info.pat_id = bill_pat.pat_id
WHERE 
  pat_info.pat_name = 'Mahmoud hussin';


--3)Find out the number of bills for the patient with name Nermin Ahmed?
SELECT 
  Medicalcharge.bill_id,
  Medicalcharge.doc_charge,
  Medicalcharge.lab_charge,
  Medicalcharge.staff_charge,
  Medicalcharge.med_charge,
  Medicalcharge.room_charge
FROM 
  Medicalcharge
INNER JOIN 
  bill_pat ON Medicalcharge.bill_id = bill_pat.bill_id
INNER JOIN 
  Patientinfo pat_info ON pat_info.pat_id = bill_pat.pat_id
WHERE 
  pat_info.pat_fname = 'Nermin';




