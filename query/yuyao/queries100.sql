SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2023-03-05' AND '2024-03-01' ORDER BY sr.Sign_Date;
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Hannah Lewis';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Frank Miller';
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'Irene Walker';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'M';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.birth_addr = 'Shenzhen';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'George White';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'female';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.patient_age = 16;
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'Jane Smith';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Emily Clark';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'F';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.patient_age = 62;
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'George White';
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-12-09' AND '2024-01-23';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'male';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'female';
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Frank Miller';
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2023-12-11' AND '2024-07-10' ORDER BY sr.Sign_Date;
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-04-02' AND '2023-11-07';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.patient_age < 56;
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.patient_age = 20;
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-11-15' AND '2024-05-15';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'female';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.birth_addr = 'Ningbo';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'George White';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'female';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.birth_addr = 'Chongqing';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.patient_age < 16;
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'George White';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.birth_addr = 'Chongqing';
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Jane Smith';
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-07-31' AND '2024-01-27';
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'Irene Walker';
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'George White';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.patient_age > 32;
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.birth_addr = 'Ningbo';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Bob Brown';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.patient_age > 62;
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'male';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.birth_addr = 'Shenzhen';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Emily Clark';
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Bob Brown';
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Jane Smith';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'male';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'female';
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2024-04-20' AND '2024-07-05' ORDER BY sr.Sign_Date;
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-01-23' AND '2023-05-27';
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Hannah Lewis';
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Frank Miller';
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Charlie Davis';
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Frank Miller';
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'Irene Walker';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'male';
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Frank Miller';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'John Doe';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Charlie Davis';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.birth_addr = 'Guangzhou';
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'John Doe';
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'Frank Miller';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Jane Smith';
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-08-06' AND '2023-10-07';
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-01-19' AND '2023-10-26';
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-02-18' AND '2023-12-02';
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2023-09-17' AND '2023-10-17' ORDER BY sr.Sign_Date;
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2024-01-14' AND '2024-01-31' ORDER BY sr.Sign_Date;
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.birth_addr = 'Hangzhou';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Alice Johnson';
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Hannah Lewis';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.patient_age < 5;
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'Frank Miller';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.patient_age > 11;
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-01-13' AND '2024-04-26';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'M';
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2023-10-05' AND '2024-07-14' ORDER BY sr.Sign_Date;
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'M';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'female';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Charlie Davis';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Alice Johnson';
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'male';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Frank Miller';
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Charlie Davis';
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-06-27' AND '2024-04-13';
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2024-03-23' AND '2024-03-29' ORDER BY sr.Sign_Date;
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-03-29' AND '2023-11-07';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'Charlie Davis';
SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.Patient_Name = 'George White';
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2023-02-12' AND '2024-06-17' ORDER BY sr.Sign_Date;
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.birth_addr = 'Chengdu';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.birth_addr = 'Chongqing';
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2023-02-27' AND '2024-01-08' ORDER BY sr.Sign_Date;
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'Charlie Davis';
SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time FROM Hospital_Admission_Record har JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name WHERE har.patient_age = 44;
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2023-10-31' AND '2024-01-26' ORDER BY sr.Sign_Date;
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2023-01-13' AND '2024-02-21' ORDER BY sr.Sign_Date;
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name FROM Hospital_Admission_Record ha JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name WHERE ha.Sex = 'female';
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis FROM Death_Record dar JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name WHERE dar.dead_time BETWEEN '2024-03-20' AND '2024-05-06' ORDER BY sr.Sign_Date;
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Patient_Name = 'Hannah Lewis';
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason FROM Hospital_Admission_Record har JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name JOIN Death_Record dar ON har.Patient_Name = dar.pt_name WHERE har.Patient_Name = 'John Doe';
SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date FROM Surgical_Record s JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name WHERE s.Sign_Date BETWEEN '2023-06-16' AND '2023-10-23';
