import random
from datetime import datetime, timedelta

# 基础SQL查询模板
sql_templates = [
    # "SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time "
    # "FROM Hospital_Admission_Record har "
    # "JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name "
    # "WHERE har.Patient_Name = '{patient_name}';",
    ## '>' '<' '='
    "SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time "
    "FROM Hospital_Admission_Record har "
    "JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name "
    "WHERE har.patient_age {option} {age};",

    "SELECT har.Patient_Name, har.Admission_Time, ds.Discharge_Time "
    "FROM Hospital_Admission_Record har "
    "JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name "
    "WHERE har.birth_addr = '{addr}';",
    
    "SELECT har.Patient_Name, har.Drug_Allergy_History, ds.Diagnostic_Process "
    "FROM Hospital_Admission_Record har "
    "JOIN Discharge_Summary ds ON har.Patient_Name = ds.Patient_Name "
    "WHERE har.Patient_Name = '{patient_name}';",
    
    "SELECT s.Patient_Name, p.Operation_Name, s.Preoperative_Diagnosis, s.Postoperative_Diagnosis "
    "FROM Surgical_Record s "
    "JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name "
    "WHERE s.Patient_Name = '{patient_name}';",

    "SELECT har.Patient_Name, har.Admission_Time, sr.Surgeon_Name, sr.Anesthesia_Type, dar.dead_reason "
    "FROM Hospital_Admission_Record har "
    "JOIN Surgical_Record sr ON har.Patient_Name = sr.Patient_Name "
    "JOIN Death_Record dar ON har.Patient_Name = dar.pt_name "
    "WHERE har.Patient_Name = '{patient_name}';",

    "SELECT s.Patient_Name, p.Operation_Name, s.Sign_Date "
    "FROM Surgical_Record s "
    "JOIN Preoperative_Summary p ON s.Patient_Name = p.Patient_Name "
    "WHERE s.Sign_Date BETWEEN '{start_date}' AND '{end_date}';",

    "SELECT har.Patient_Name, har.Sex, dar.dead_reason, dar.dead_time, sr.Preoperative_Diagnosis, sr.Postoperative_Diagnosis "
    "FROM Death_Record dar "
    "JOIN Surgical_Record sr ON dar.Hospitalization_Number = sr.Hospitalization_Number "
    "JOIN Hospital_Admission_Record har ON har.Patient_Name = dar.pt_name "
    "WHERE dar.dead_time BETWEEN '{start_date}' AND '{end_date}' "
    "ORDER BY sr.Sign_Date;",

    "SELECT ha.Patient_Name, dr.Admission_Condition, dr.dead_reason, sr.Operation_Name "
    "FROM Hospital_Admission_Record ha "
    "JOIN Death_Record dr ON ha.Patient_Name = dr.pt_name "
    "JOIN Surgical_Record sr ON ha.Patient_Name = sr.Patient_Name "
    "WHERE ha.Sex = '{sex}';"
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
        if "{patient_name}" in template:
            query = template.format(patient_name=random.choice(patient_names))
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

# schema + query + 注释 (打包一下)
# 浙二方面和余姚方面

# 如果需要将查询写入文件
with open(f'queries{counts}.txt', 'w') as f:
    for query in random_queries:
        f.write(query + '\n')
