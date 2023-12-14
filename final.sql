drop database gym2;
create database gym2;
use gym2;
CREATE TABLE VungChanThuong (
    id INT PRIMARY KEY,
    moTa VARCHAR(255),
    idCha INT NOT NULL
);

CREATE TABLE cauhoi(
    id INT PRIMARY KEY,
    moTa text,
    loai int not null
);
create table vungct_cauhoi(
	id int primary key,
	idVungChanThuong INT NOT NULL,
    idcauhoi INT NOT NULL
);
CREATE TABLE TrieuChung(
    id INT PRIMARY KEY,
    moTa text,
    idCauHoi int not null,
    doLienQuan JSON
);

create table ChuanDoan(
     id INT PRIMARY KEY,
     moTa text,
     idVungChanThuong int not null
);
create table ChuanDoan_PPDieuTri(
      id INT PRIMARY KEY,
      idChuanDoan int NOT NULL,
      idPPDieuTri int NOT NULL
);
create table PPDieuTri(
	id INT primary key,
    moTa text
);
create table LoiKhuyen(
    id INT primary key,
    moTa text
);
create table ChuanDoan_LoiKhuyen(
	id INT primary key,
    idChuanDoan int not null,
    idLoiKhuyen int not null
)
;
-- Khóa ngoại cho bảng vungct_cauhoi
ALTER TABLE vungct_cauhoi
ADD CONSTRAINT fk_vungct_cauhoi_vungchanthuong
FOREIGN KEY (idVungChanThuong) REFERENCES VungChanThuong(id);

ALTER TABLE vungct_cauhoi
ADD CONSTRAINT fk_vungct_cauhoi_cauhoi
FOREIGN KEY (idcauhoi) REFERENCES cauhoi(id);

-- Khóa ngoại cho bảng TrieuChung
ALTER TABLE TrieuChung
ADD CONSTRAINT fk_trieuchung_cauhoi
FOREIGN KEY (idCauHoi) REFERENCES cauhoi(id);

-- Khóa ngoại cho bảng ChuanDoan
ALTER TABLE ChuanDoan
ADD CONSTRAINT fk_chuandoan_vungchanthuong
FOREIGN KEY (idVungChanThuong) REFERENCES VungChanThuong(id);

-- Khóa ngoại cho bảng ChuanDoan_PPDieuTri
ALTER TABLE ChuanDoan_PPDieuTri
ADD CONSTRAINT fk_chuandoan_ppdieutri_chuandoan
FOREIGN KEY (idChuanDoan) REFERENCES ChuanDoan(id);

ALTER TABLE ChuanDoan_PPDieuTri
ADD CONSTRAINT fk_chuandoan_ppdieutri_ppdieutri
FOREIGN KEY (idPPDieuTri) REFERENCES PPDieuTri(id);

-- Khóa ngoại cho bảng ChuanDoan_LoiKhuyen
ALTER TABLE ChuanDoan_LoiKhuyen
ADD CONSTRAINT fk_chuandoan_loikhuyen_chuandoan
FOREIGN KEY (idChuanDoan) REFERENCES ChuanDoan(id);

ALTER TABLE ChuanDoan_LoiKhuyen
ADD CONSTRAINT fk_chuandoan_loikhuyen_loikhuyen
FOREIGN KEY (idLoiKhuyen) REFERENCES LoiKhuyen(id);
