from models import VungChanThuong
from connection import *
from colorama import Fore, Back, Style,init
init()
def xac_dinh_vung_chan_thuong():
    cha = VungChanThuong(1,'root',0)
    while True:
        ls  = get_vung_chan_thuong_theo_cha(cha)
        if len(ls)==0:
            break
        if cha.id==1:
            print("Bạn bị chấn thương vùng nào trong các vùng sau")
        else:
            print(f"Để cụ thể hơn trong vùng {cha.moTa} bạn cảm thấy đau ở đâu trong các vùng dưới đây")
        i = 1
        for x in ls:
            print(str(i)+". "+x.moTa)
            i += 1
        ans = int(input("Lựa chọn 1 phương án: \n"))
        cha = ls[ans-1]
    return cha

def xac_dinh_ds_trieu_chung(vungChanThuong):
    dsch = get_ds_cau_hoi_theo_vung_CT(vungChanThuong)
    print(len(dsch))
    lsans = []
    for ch in dsch:
        ls = get_ds_trieu_chung_theo_cau_hoi(ch)
        if len(ls)>0:
            print(ch.moTa)
            d = 1
            for x in ls:
                print(d,".",x.moTa)
                d+=1
            if ch.loai==1:
                ans = int(input("Lựa chọn 1 phương án: \n"))
                lsans.append(ls[ans-1])
            else:
                ans = list(map(int,input("Bạn có thể lựa chọn nhiều phương án: \n").split()))
                for k in ans:
                    lsans.append(ls[k-1])

    return lsans

def xac_dinh_chuan_doan_theo_ds_trieu_chung_vungct(dstc,vct):
    dscd = get_ds_chuan_doan_theo_vung_CT(vct)
    print('dscd',len(dscd))
    lsidcd =[]
    diemcd = {}
    for cd in dscd:
        diemcd[cd.id] =0
        lsidcd.append(cd.id)
    print(len(lsidcd))
    for tc in dstc:
        for k,v in tc.doLienQuan.items():
            k = int(k)
            if k in lsidcd:
                diemcd[k]+=v

    maxx = len(dstc)*1.0
    for k in diemcd.keys():
        diemcd[k] = diemcd[k]/maxx

    dscdf = []
    for cd in dscd:
        if diemcd[cd.id] > 0:
            dcd =  DiemChuanDoan(cd,diemcd[cd.id])
            dscdf.append(dcd)
    dscdf.sort(key=lambda x: x.diem, reverse=True)
    return dscdf


v = xac_dinh_vung_chan_thuong()
ls = xac_dinh_ds_trieu_chung(v)

for x in ls:
    print(type(x.doLienQuan))
    print(x.doLienQuan)

dscdf = xac_dinh_chuan_doan_theo_ds_trieu_chung_vungct(ls,v)
print("------------------------")
for x in dscdf:
    print(x.chuandoan.id)
    print(x.chuandoan.moTa)
    print(x.chuandoan.idVungChanThuong)
    print(x.diem)
