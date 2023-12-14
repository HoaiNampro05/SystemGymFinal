DELETE FROM vungct_cauhoi where id > 0;
INSERT INTO vungct_cauhoi (id, idVungChanThuong, idCauHoi) VALUES (1, 24, 1);
INSERT INTO vungct_cauhoi (id, idVungChanThuong, idCauHoi) VALUES (2, 24, 2);
INSERT INTO vungct_cauhoi (id, idVungChanThuong, idCauHoi) VALUES (3, 24, 3);
INSERT INTO vungct_cauhoi (id, idVungChanThuong, idCauHoi) VALUES (4, 24, 9);
INSERT INTO vungct_cauhoi (id, idVungChanThuong, idCauHoi) VALUES (5, 24, 10);
INSERT INTO vungct_cauhoi (id, idVungChanThuong, idCauHoi) VALUES (6, 24, 11);

delete from TrieuChung where id > 0;

INSERT INTO TrieuChung (id, moTa, idCauHoi, doLienQuan) VALUES
(1, 'Đau nặng: mức độ đau mạnh, ảnh hưởng nghiêm trọng đến khả năng sinh hoạt và có thể cần can thiệp y tế', 1, '{"3": 90, "1": 50, "2": 30}'),
(2, 'Đau vừa: cảm giác đau có thể chịu đựng được nhưng có thể gây khó chịu khi thực hiện các hoạt động', 1, '{"3": 40, "1": 70, "2": 60}'),
(3, 'Đau nhẹ: cảm giác đau nhẹ, không ảnh hưởng nhiều đến sinh hoạt hàng ngày', 1, '{"2": 60, "1": 40, "3": 20}');
INSERT INTO TrieuChung (id, moTa, idCauHoi, doLienQuan) VALUES
(4, 'Sưng và viêm: Vùng cơ bị tổn thương có thể sưng lên và trở nên nóng, đỏ', 2, '{"1": 80, "2": 75, "3": 85}'),
(5, 'Bầm tím: Xuất hiện vết bầm do tổn thương mạch máu dưới da.', 2, '{"1": 70, "2": 50, "3": 90}'),
(6, 'Hạn chế cử động: Khó khăn trong việc cử động khớp liên quan, có thể do đau hoặc sưng.', 2, '{"1": 80, "2": 60, "3": 90}'),
(7, 'Tiếng lách cách: Khi cử động khớp có thể nghe thấy tiếng lách cách, điều này có thể chỉ ra rằng có vấn đề với khớp hoặc dây chằng.', 2, '{"1": 65, "2": 30, "3": 55}'),
(8, 'Mất lực: Cảm giác yếu ớt hoặc mất khả năng sử dụng sức mạnh ở vùng cơ bị tổn thương.', 2, '{"1": 75, "2": 50, "3": 85}');
INSERT INTO TrieuChung (id, moTa, idCauHoi, doLienQuan) VALUES
(9, 'Mới gần đây', 3, '{"1": 50, "2": 50, "3": 20}'),
(10, 'Vài ngày nay', 3, '{"1": 60, "2": 60, "3": 30}'),
(11, 'Hơn một tuần', 3, '{"1": 40, "2": 70, "3": 80}'),
(12, 'Kéo dài nhiều tuần', 3, '{"1": 50, "2": 60, "3": 90}');
INSERT INTO TrieuChung (id, moTa, idCauHoi, doLienQuan) VALUES
(13, 'Không', 9, '{"1": 10, "2": 10, "3": 10}'),
(14, 'Khi cử động cổ tay', 9, '{"1": 70, "2": 50, "3": 80}'),
(15, 'Khi nâng vật nặng', 9, '{"1": 40, "2": 50, "3": 20}'),
(16, 'Khi xoay cổ tay', 9, '{"1": 80, "2": 70, "3": 30}');
INSERT INTO TrieuChung (id, moTa, idCauHoi, doLienQuan) VALUES
(17, 'Không sưng hoặc căng', 10, '{"1": 0, "2": 0, "3": 0}'),
(18, 'Sưng nhẹ hoặc căng nhẹ', 10, '{"1": 50, "2": 20, "3": 10}'),
(19, 'Sưng rõ rệt hoặc căng nhiều', 10, '{"1": 80, "2": 50, "3": 30}'),
(20, 'Sưng và căng đến mức không thể cử động', 10, '{"1": 20, "2": 70, "3": 90}');
INSERT INTO TrieuChung (id, moTa, idCauHoi, doLienQuan) VALUES
(21, 'Di chuyển bình thường không cảm giác cứng', 11, '{"1": 0, "2": 0, "3": 0}'),
(22, 'Cảm giác nhẹ cứng nhưng không ảnh hưởng nhiều', 11, '{"1": 80, "2": 30, "3": 10}'),
(23, 'Di chuyển có cảm giác cứng, hạn chế đôi chút', 11, '{"1": 40, "2": 60, "3": 20}'),
(24, 'Cổ tay rất cứng, di chuyển hạn chế nhiều', 11, '{"1": 20, "2": 70, "3": 70}'),
(25, 'Cổ tay cứng đơ không thể di chuyển', 11, '{"1": 20, "2": 50, "3": 80}');

DELETE FROM ChuanDoan WHERE id > 0;

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(1, 'Bong gân cổ tay', 24),
	(2, 'Căng cơ cổ tay', 24),
	(3, 'Gãy xương cổ tay', 24);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(4, 'Chấn thương chóp xoay khớp vai', 26),
	(5, 'Chấn thương sụn viền khớp vai', 26),
	(6, 'Rách cơ chóp xoay', 26),
	(7, 'Trật khớp cơ vai', 26);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(8, 'Chấn thương cơ cổ', 25),
	(9, 'Hội chứng đau cổ vai', 25),
	(10, 'Thoát vị đĩa đệm cổ', 25);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(11, 'Viêm gân khuỷu tay', 23),
	(12, 'Hội chứng ống cổ tay khuỷu', 23),
	(13, 'Rách cơ bắp khuỷu tay', 23),
	(14, 'Bong gân khuỷu tay', 23),
	(15, 'Tổn thương sụn chêm khuỷu tay', 23);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(16, 'Rách cơ bụng', 19),
	(17, 'Bong gân cơ bụng', 19),
	(18, 'Tổn thương dây chằng cơ bụng', 19),
	(19, 'Bầm tím cơ bụng', 19);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(20, 'Rách cơ bắp tay', 20),
	(21, 'Chấn thương cơ bắp tay do quá tải', 20),
	(22, 'Bong gân cơ bắp tay', 20);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(23, 'Rách cơ rotator cuff', 21),
	(24, 'Viêm bao cơ vai', 21),
	(25, 'Bong gân cơ vai', 21);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(26, 'Rách cơ ngực', 22),
	(27, 'Chấn thương cơ ngực do quá tải', 22),
	(28, 'Bong gân cơ ngực', 22);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(29, 'Rách cơ đùi sau', 11),
	(30, 'Chấn thương cơ đùi sau do quá tải', 11),
	(31, 'Bong gân cơ đùi sau', 11);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(32, 'Rách cơ đùi trước', 12),
	(33, 'Chấn thương cơ đùi trước do quá tải', 12),
	(34, 'Bong gân cơ đùi trước', 12);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(35, 'Hội chứng chạm khớp háng', 13),
	(36, 'Viêm khớp háng', 13),
	(37, 'Trật khớp háng', 13);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(38, 'Rách cơ hông', 14),
	(39, 'Chấn thương cơ hông do quá tải', 14),
	(40, 'Bong gân cơ hông', 14);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(41, 'Đứt dây chằng chéo trước', 15),
	(42, 'Viêm bao gân gối', 15),
	(43, 'Gãy xương bánh chè', 15),
	(44, 'Bong gân khớp gối', 15);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(45, 'Căng cơ bắp chân', 16),
	(46, 'Rách cơ bắp chân', 16),
	(47, 'Chấn thương cơ sinh đôi cẳng chân', 16);
    
INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(48, 'Bong gân cổ chân', 17),
	(49, 'Viêm gân Achilles', 17),
	(50, 'Gãy xương mắt cá chân', 17),
	(51, 'Viêm dây chằng cổ chân', 17),
	(52, 'Rách dây chằng cổ chân', 17),
	(53, 'Hội chứng đau gót chân', 17),
	(54, 'Viêm màng hoạt dịch cổ chân', 17);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(55, 'Căng cơ lưng dưới', 7),
	(56, 'Chấn thương cơ lưng dưới do quá tải', 7),
	(57, 'Thoát vị đĩa đệm lưng dưới', 7);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(58, 'Căng cơ lưng trên', 8),
	(59, 'Chấn thương cơ lưng trên do quá tải', 8),
	(60, 'Đau cơ lưng trên', 8);

INSERT INTO ChuanDoan (id, moTa, idVungChanThuong) VALUES
	(61, 'Căng cơ ngực', 5),
	(62, 'Chấn thương cơ ngực do nâng tạ', 5),
	(63, 'Bong cơ ngực', 5),
	(64, 'Chấn thương cơ ngực do bench press', 5);

DELETE FROM CauHoi where id > 0;
INSERT INTO CauHoi (id, moTa, loai) VALUES (1, 'Bạn có thể mô tả mức độ đau như thế nào?',1);
INSERT INTO CauHoi (id, moTa, loai) VALUES (2, 'Bạn có dấu hiệu nào đi kèm không?',2);
INSERT INTO CauHoi (id, moTa, loai) VALUES (3, 'Bạn gặp phải triệu chứng này đã bao lâu rồi?',1);
INSERT INTO CauHoi (id, moTa, loai) VALUES (4, 'Chấn thương của bạn liên quan đến bất kỳ hoạt động cụ thể nào?', 2);
INSERT INTO CauHoi (id, moTa, loai) VALUES (5, 'Bạn đã thử bất kỳ biện pháp giảm đau hoặc làm dịu triệu chứng nào chưa?', 2);
INSERT INTO CauHoi (id, moTa, loai) VALUES (6, 'Có sự thay đổi nào trong mức độ đau của bạn từ khi bạn bắt đầu gặp vấn đề không?', 1);
INSERT INTO CauHoi (id, moTa, loai) VALUES (7, 'Bạn đã tham khảo ý kiến bác sĩ hoặc chuyên gia y tế nào về vấn đề này chưa?', 1);
INSERT INTO CauHoi (id, moTa, loai) VALUES (8, 'Bạn đã từng bị chấn thương ở vị trí này trước đây chưa?', 1);
-- Cổ tay
INSERT INTO CauHoi (id, moTa, loai) VALUES (9, 'Bạn có cảm thấy đau khi thực hiện động tác cụ thể nào không?', 1);
INSERT INTO CauHoi (id, moTa, loai) VALUES (10, 'Cổ tay của bạn có bị sưng hoặc cảm giác căng không sau khi tập luyện?', 1);
INSERT INTO CauHoi (id, moTa, loai) VALUES (11, 'Bạn có khả năng di chuyển cổ tay bình thường không hay có cảm giác cứng khi di chuyển?', 1);
