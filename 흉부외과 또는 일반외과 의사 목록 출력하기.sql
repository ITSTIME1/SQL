SELECT 
DOCTOR.DR_NAME,
DOCTOR.DR_ID,
DOCTOR.MCDP_CD,
DATE_FORMAT(DOCTOR.HIRE_YMD, '%Y-%m-%d') as 'HIRE_YMD'
FROM DOCTOR where DOCTOR.MCDP_CD = 'CS' or DOCTOR.MCDP_CD = 'GS' order by HIRE_YMD DESC, DOCTOR.DR_NAME ASC;