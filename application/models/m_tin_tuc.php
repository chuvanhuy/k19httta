<?php 
	class m_tin_tuc extends CI_Model {
		// Mục đích lấy tin tức theo loại tin
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

        // Mục đích Lấy tin tức theo ID
		public function lay_tin_tuc_theo_ID($id)
        {
			// Viết câu lệnh truy vấn SQL lấy các tin tức sự kiện (có mã loai_tin_id)
			$query = $this->db->query("
				SELECT * 
				FROM tbl_tin_tuc
				WHERE id=".$id
			);

			// Trả kết quả truy vấn dữ liệu
	        return  $query->row();
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
        	// Dữ liệu thu được từ FORM nhập dữ liệu
			$id = $_POST['txtID'];
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

			// Thực hiện cập nhật dữ liệu vào bảng TIN TỨC
			$this->db->where('id', $id);
			$this->db->update('tbl_tin_tuc', $data);
        }

		public function xoa_tin_tuc($id)
        {
			// Thực hiện việc xóa dữ liệu
			$this->db->where('id', $id);
			$this->db->delete('tbl_tin_tuc');
        }

	}
;?>