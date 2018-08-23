import pymysql

db = pymysql.connect("172.16.0.4", "root", "blockchain", "candyDB")

cursor = db.cursor()

selectCoreSQL = "select core_id from contact_relation group by core_id"
selectCreditSQL = "select core_id from credit where core_id = %d"
addCreditSQL = "insert into credit (com_id, core_id, is_credit) values(%d, %d, 1);"
addContactRelationSQL = "insert into contact_relation (com_id, supplier_or_member_id, relationship, core_id ) values(%d, %d, 3, %d);"

cursor.execute(selectCoreSQL)
coreList = cursor.fetchall()
try:
    for row in coreList:
        coreId = row[0]
        print("Modify core id :", coreId)
        cursor.execute(addCreditSQL % (coreId, coreId))
        cursor.execute(addContactRelationSQL % (coreId, coreId, coreId))
        db.commit()
except Exception as e:
    db.rollback()
finally:
    db.close()
