import mysql.connector
import json
from models import *
def get_connection():
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="12345",
        database="gym2"
    )
    if connection.is_connected():
        return connection
    return None

def get_vung_chan_thuong_theo_cha(cha):
    connection = get_connection()
    cursor = connection.cursor()
    ls = []
    cursor.execute(f"SELECT * FROM VungChanThuong where idCha = {cha.id}")
    results = cursor.fetchall()
    for row in results:
        vct = VungChanThuong(row[0], row[1], row[2])
        ls.append(vct)
    return ls

def get_ds_cau_hoi_theo_vung_CT(vungct):
    connection = get_connection()
    cursor = connection.cursor()
    ls = []
    cursor.execute(f"select * from cauhoi where id in (select idCauHoi from vungct_cauhoi where idvungchanthuong ={vungct.id})")
    results = cursor.fetchall()
    for row in results:
        ch = CauHoi(row[0], row[1], row[2])
        ls.append(ch)
    return ls

def get_ds_trieu_chung_theo_cau_hoi(ch):
    connection = get_connection()
    cursor = connection.cursor()
    ls = []
    cursor.execute(
        f"select * from trieuchung where idCauHoi = {ch.id}")
    results = cursor.fetchall()
    for row in results:
        tc = TrieuChung(row[0], row[1], row[2],json.loads(row[3]))
        ls.append(tc)
    return ls

def get_ds_chuan_doan_theo_vung_CT(vungct):
    connection = get_connection()
    cursor = connection.cursor()
    ls = []
    cursor.execute(
        f"select * from chuandoan where idVungChanThuong = {vungct.id}")
    results = cursor.fetchall()
    for row in results:
        cd = ChuanDoan(row[0], row[1], row[2])
        ls.append(cd)
    return ls

def get_dspp_dieu_tri_theo_chuan_doan(cd):
    connection = get_connection()
    cursor = connection.cursor()
    ls = []
    cursor.execute(
        f"select * from ppdieutri where id in (select idppdieutri from chuandoan_ppdieutri where idchuandoan={cd.id})")
    results = cursor.fetchall()
    for row in results:
        ppdt = PPDieuTri(row[0], row[1])
        ls.append(ppdt)
    return ls

def get_loi_khuyen_theo_chuan_doan(cd):
    connection = get_connection()
    cursor = connection.cursor()
    ls = []
    cursor.execute(
        f"select * from loikhuyen where id in (select idloikhuyen from chuandoan_loikhuyen where idchuandoan={cd.id})")
    results = cursor.fetchall()
    for row in results:
        lk = LoiKhuyen(row[0], row[1])
        ls.append(lk)
    return ls