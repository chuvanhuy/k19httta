<?php 
	class m_tin_tuc extends CI_Model {
		public function lay_tin_tuc_theo_loai_tin($loai_tin_id)
        {
			// Viết câu lệnh truy vấn SQL lấy các tin tức sự kiện (có mã loai_tin_id)
			$query = $this->db->query("
				SELECT * 
				FROM tbl_tin_tuc
				WHERE loai_tin_id=".$loai_tin_id."
			");

			// Trả kết quả truy vấn dữ liệu
            return $query->result();
        }

		public function lay_tin_tuc()
        {
        	// Từ từ đã
        }

		public function lay_5_tin_tuc_moi_nhat()
        {
        	// Từ từ đã
        }

		public function them_moi_tin_tuc()
        {
			// Dữ liệu thu được từ FORM nhập dữ liệu
			$loai_tin_id = '1';
			$tieu_de = $_POST['txtTieuDe'];
			$mo_ta = $_POST['txtMoTa'];
			$noi_dung = $_POST['txtNoiDung'];

			// Đẩy dữ liệu này vào CSDL
			$data = array(
				'loai_tin_id' => $loai_tin_id,
				'tieu_de' => $tieu_de,
				'mo_ta' => $mo_ta,
				'noi_dung' => $noi_dung
			);

			// Thực hiện chèn dữ liệu vào bảng TIN TỨC
			$this->db->insert('tbl_tin_tuc', $data);

        }

		public function sua_tin_tuc()
        {
        	// Từ từ đã
        }

		public function xoa_tin_tuc()
        {
        	// Từ từ đã
        }

	}
;?>