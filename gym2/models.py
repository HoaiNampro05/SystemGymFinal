class VungChanThuong:
    def __init__(self, id, moTa, idCha):
        self.id = id
        self.moTa = moTa
        self.idCha = idCha

class CauHoi:
    def __init__(self, id, moTa, loai):
        self.id = id
        self.moTa = moTa
        self.loai = loai

class VungCauHoi:
    def __init__(self, id, idVungChanThuong, idCauHoi):
        self.id = id
        self.idVungChanThuong = idVungChanThuong
        self.idCauHoi = idCauHoi

class TrieuChung:
    def __init__(self, id, moTa, idCauHoi, doLienQuan):
        self.id = id
        self.moTa = moTa
        self.idCauHoi = idCauHoi
        self.doLienQuan = doLienQuan

class ChuanDoan:
    def __init__(self, id, moTa, idVungChanThuong):
        self.id = id
        self.moTa = moTa
        self.idVungChanThuong = idVungChanThuong


class DiemChuanDoan:
    def __init__(self,chuandoan,diem):
        self.chuandoan = chuandoan
        self.diem = diem


class ChuanDoan_PPDieuTri:
    def __init__(self, id, idChuanDoan, idPPDieuTri):
        self.id = id
        self.idChuanDoan = idChuanDoan
        self.idPPDieuTri = idPPDieuTri


class PPDieuTri:
    def __init__(self, id, moTa):
        self.id = id
        self.moTa = moTa


class LoiKhuyen:
    def __init__(self, id, moTa):
        self.id = id
        self.moTa = moTa

class ChuanDoan_LoiKhuyen:
    def __init__(self, id, idChuanDoan, idLoiKhuyen):
        self.id = id
        self.idChuanDoan = idChuanDoan
        self.idLoiKhuyen = idLoiKhuyen
