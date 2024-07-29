----  两表查询
1. **查询特定患者的入院时长——入院时间和出院时间**

    SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time
    FROM Hospital_Admission_Record har
    JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name
    WHERE har.Patient_Name = 'Frank Miller';
    
    SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time
    FROM Hospital_Admission_Record har
    JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name
    WHERE har.age > 20;
    
    SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time
    FROM Hospital_Admission_Record har
    JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name
    WHERE har.birth_addr = 'Shanghai';

2. **查询特定患者的药物过敏历史和诊断过程**

   SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process
   FROM Hospital_Admission_Record har
   JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name
   WHERE har.Patient_Name = 'Bob Brown';

3. 查询某个患者在手术前后的诊断变化，包括手术名称、术前诊断和术后诊断：
SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis
FROM Surgical_Record s
JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name
WHERE s.Patient_Name = 'John Doe';

4. 查询某个时间段内所有手术记录的详细信息，包括患者姓名、手术名称和手术日期：

SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date
FROM Surgical_Record s
JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name
WHERE s.Sign_Date BETWEEN '2023-01-01' AND '2023-12-31';

---- 三（四）表联合查询
 
1. 查询特定患者在医院的所有记录，包括入院记录、手术记录和死亡记录。
SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason
FROM Hospital_Admission_Record har
JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name
JOIN Death_Record dar ON har.Patient_Name = dar.pt_name
WHERE har.Patient_Name = 'John Doe';


2. 查询所有女性患者的入院条件、死亡原因和手术名称：
SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name
FROM Hospital_Admission_Record ha
JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name
JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name
WHERE ha.Sex = 'Female';
    
3. 查询特定时间段内死亡患者的详细信息，包括患者姓名、死亡原因、死亡时间、手术记录和预手术诊断，并按手术日期排序。
SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis
FROM Death_Record dar
JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number
JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name
WHERE dar.dead_time BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY sr.Sign_Date;