import random
from datetime import datetime, timedelta

# 基础SQL查询模板
sql_templates = [
    # "SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time "
    # "FROM Hospital_Admission_Record har "
    # "JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name "
    # "WHERE har.Patient_Name = '{patient_name_2}';",
    ## '>' '<' '='
    "SELECT har.name, har.admission_date, ds.admission_time "
    "FROM admission_records har "
    "JOIN normal_discharge_records ds ON har.name = ds.patient_s_signature_fingerprint "
    "WHERE har.age {option} {age};",

    "SELECT har.name, har.admission_date, ds.admission_time "
    "FROM admission_records har "
    "JOIN normal_discharge_records ds ON har.name = ds.patient_s_signature_fingerprint "
    "WHERE har.place_of_birth = '{addr}';",

    "SELECT har.name, har.admission_date, ds.admission_time "
    "FROM admission_records har "
    "JOIN normal_discharge_records ds ON har.name = ds.patient_s_signature_fingerprint "
    "WHERE har.name = '{patient_name_2}';",
    

   "SELECT har.name, har.drug_and_food_allergy_history, ds.hospital_course "
   "FROM admission_records har "
   "JOIN normal_discharge_records ds ON har.name = ds.patient_s_signature_fingerprint "
   "WHERE har.name = '{patient_name_2}';",

    "SELECT s.patient_name, p.proposed_surgical_method, s.preoperative_diagnosis, s.postoperative_diagnosis "
    "FROM operation_record s "
    "JOIN preoperative_summary p ON s.patient_name = p.Patient_Name "
    "WHERE s.patient_name = '{patient_name_2}';",

    "SELECT har.name, har.admission_date, sr.surgeon_signature, dar.cause_of_death "
    "FROM admission_records har "
    "JOIN operation_record sr ON har.name = sr.Patient_Name "
    "JOIN death_record dar ON har.name = dar.pt_name "
    "WHERE har.name = '{patient_name_2}'; ",

    "SELECT s.patient_name, p.proposed_surgical_method, s.date_and_time "
    "FROM operation_record s "
    "JOIN preoperative_summary p ON s.patient_name = p.Patient_Name "
    "WHERE s.date_and_time BETWEEN '{start_date}' AND '{end_date}';",

    "SELECT har.name, har.gender, dar.cause_of_death, dar.time_of_death, sr.preoperative_diagnosis, sr.postoperative_diagnosis "
    "FROM death_record dar "
    "JOIN operation_record sr ON dar.medical_record_number = sr.medical_record_number "
    "JOIN admission_records har ON har.name = dar.pt_name "
    "WHERE dar.time_of_death BETWEEN '{start_date}' AND '{end_date}' "
    "ORDER BY sr.date_and_time;",

    "SELECT ha.name, dr.admission_condition, dr.cause_of_death, sr.proposed_surgical_method "
    "FROM admission_records ha "
    "JOIN death_record dr ON ha.name = dr.pt_name "
    "JOIN operation_record sr ON ha.name = sr.Patient_Name "
    "WHERE ha.gender = 'Female';",

    "SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name "
    "FROM Hospital_Admission_Record ha "
    "JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name "
    "JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name "
    "WHERE ha.Gender = '{sex}';"
]

# 设置起始和结束日期
start_date = datetime(2023, 1, 1)
end_date = datetime(2024, 7, 31)

# 生成随机日期范围的函数
def random_date(start, end):
    delta = end - start
    random_days = random.randint(0, delta.days)
    return start + timedelta(days=random_days)

def random_start_end_date():
    start_rand_date = random_date(start_date, end_date)
    end_rand_date = random_date(start_date, end_date)
    # 确保结束日期不早于开始日期
    if end_rand_date < start_rand_date:
        start_rand_date, end_rand_date = end_rand_date, start_rand_date
    # 格式化日期为字符串格式
    start_str = start_rand_date.strftime('%Y-%m-%d')
    end_str = end_rand_date.strftime('%Y-%m-%d')
    return start_str, end_str

# 随机患者姓名
patient_names = [
    'John Doe', 'Jane Smith', 'Bob Brown', 'Alice Johnson', 'Frank Miller',
    'Charlie Davis', 'Emily Clark', 'George White', 'Hannah Lewis', 'Irene Walker'
]
ages = range(5, 65)
cities = ['Beijing', 'Shanghai', 'Guangzhou', 'Shenzhen', 'Chengdu', 'Tianjin', 'Chongqing', 'Hangzhou', 'Ningbo']
sexs = ['male', 'female', 'M', 'F']
ops = ['>','<','=']

# 生成随机查询
def generate_random_queries(n):
    queries = []
    for _ in range(n):
        template = random.choice(sql_templates)
        if "{patient_name_2}" in template:
            query = template.format(patient_name_2=random.choice(patient_names))
        elif "{age}" in template:
            query = template.format(age=random.choice(ages), option=random.choice(ops))
        elif "{addr}" in template:
            query = template.format(addr=random.choice(cities))
        elif "{start_date}" in template:
            start_rand_date, end_rand_date = random_start_end_date()
            query = template.format(start_date=start_rand_date, end_date=end_rand_date)
        elif "{sex}" in template:
            query = template.format(sex=random.choice(sexs))
        queries.append(query)

    return queries

# 生成100条随机查询
counts = 100
random_queries = generate_random_queries(counts)

# 如果需要将查询写入文件
with open(f'queries{counts}.sql', 'w') as f:
    for query in random_queries:
        f.write(query + '\n')
