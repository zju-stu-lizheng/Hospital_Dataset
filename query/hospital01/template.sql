----  两表查询
1. **查询特定患者的入院时长——入院时间和出院时间**

    SELECT har.name, har.admission_date, ds.admission_time
    FROM admission_records har
    JOIN normal_discharge_records ds ON har.name = ds.patient_s_signature_fingerprint
    WHERE har.name = 'Frank Miller';
    
    SELECT har.name, har.admission_date, ds.admission_time
    FROM admission_records har
    JOIN normal_discharge_records ds ON har.name = ds.patient_s_signature_fingerprint
    WHERE har.age > 20;
    
    SELECT har.name, har.admission_date, ds.admission_time
    FROM admission_records har
    JOIN normal_discharge_records ds ON har.name = ds.patient_s_signature_fingerprint
    WHERE har.place_of_birth = 'Shanghai';

2. **查询特定患者的药物过敏历史和诊断过程**

   SELECT har.name, har.drug_and_food_allergy_history, ds.hospital_course
   FROM admission_records har
   JOIN normal_discharge_records ds ON har.name = ds.patient_s_signature_fingerprint
   WHERE har.name = 'Bob Brown';

3. 查询某个患者在手术前后的诊断变化，包括手术名称、术前诊断和术后诊断：
SELECT s.patient_name, p.proposed_surgical_method, s.preoperative_diagnosis, s.postoperative_diagnosis
FROM operation_record s
JOIN preoperative_summary p ON s.patient_name = p.Patient_Name
WHERE s.patient_name = 'John Doe';

4. 查询某个时间段内所有手术记录的详细信息，包括患者姓名、手术名称和手术日期：

SELECT s.patient_name, p.proposed_surgical_method, s.date_and_time
FROM operation_record s
JOIN preoperative_summary p ON s.patient_name = p.Patient_Name
WHERE s.date_and_time BETWEEN '2023-01-01' AND '2023-12-31';

---- 三（四）表联合查询
 
1. 查询特定患者在医院的所有记录，包括入院记录、手术记录和死亡记录。
SELECT har.name, har.admission_date, sr.surgeon_signature, dar.cause_of_death
FROM admission_records har
JOIN operation_record sr ON har.name = sr.Patient_Name
JOIN death_record dar ON har.name = dar.pt_name
WHERE har.name = 'John Doe';


2. 查询所有女性患者的入院条件、死亡原因和手术名称：
SELECT ha.name, dr.admission_condition, dr.cause_of_death, sr.proposed_surgical_method
FROM admission_records ha
JOIN death_record dr ON ha.name = dr.pt_name
JOIN operation_record sr ON ha.name = sr.Patient_Name
WHERE ha.gender = 'Female';
    
3. 查询特定时间段内死亡患者的详细信息，包括患者姓名、死亡原因、死亡时间、手术记录和预手术诊断，并按手术日期排序。
SELECT har.name, har.gender, dar.cause_of_death, dar.dead_time, sr.preoperative_diagnosis, sr.postoperative_diagnosis
FROM death_record dar
JOIN operation_record sr ON dar.medical_record_number = sr.medical_record_number
JOIN admission_records har ON har.name = dar.pt_name
WHERE dar.dead_time BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY sr.date_and_time;