<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_tin_tuc extends CI_Controller {
	public function index()
	{
		// Kết nối đến CSDL
		$this->load->database();


		// Viết câu lệnh truy vấn SQL lấy các tin tức sự kiện (có mã loai_tin_id=1)
		$query1 = $this->db->query("
			SELECT * 
			FROM tbl_tin_tuc
			WHERE loai_tin_id='1'
		");

		// Lấy kết quả truy vấn dữ liệu
		$data['tin_su_kien'] = $query1->result();


		// Viết câu lệnh truy vấn SQL lấy các tin tức công nghệ (có mã loai_tin_id=2)
		$query2 = $this->db->query("
			SELECT * 
			FROM tbl_tin_tuc
			WHERE loai_tin_id='2'
		");

		// Lấy kết quả truy vấn dữ liệu
		$data['tin_cong_nghe'] = $query2->result();


		// Hiển thị dữ liệu ra view
		$this->load->view('admin/v_quan_tri_tin_tuc', $data);
	}
}