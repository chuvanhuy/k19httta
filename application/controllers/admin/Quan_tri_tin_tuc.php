<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_tin_tuc extends CI_Controller {
	public function index()
	{
		// Kết nối đến CSDL
		$this->load->database();

		// Kết nối đến MODEL
		$this->load->model('m_tin_tuc');

		// Lấy kết quả tin tức sự kiện qua MODEL
		$data['tin_su_kien'] = $this->m_tin_tuc->lay_tin_tuc_theo_loai_tin(1);

		// Lấy kết quả tin tức công nghệ qua MODEL
		$data['tin_cong_nghe'] = $this->m_tin_tuc->lay_tin_tuc_theo_loai_tin(2);

		// Hiển thị dữ liệu ra view
		$this->load->view('admin/v_quan_tri_tin_tuc', $data);
	}


	public function them_moi_tin_tuc()
	{
		// Load thư viện URL
		$this->load->helper('url');
	
		// Hiển thị dữ liệu ra view
		$this->load->view('admin/v_tin_tuc_them_moi');
	}


	public function thuc_hien_them_moi_tin_tuc()
	{
		// Kết nối đến CSDL
		$this->load->database();

		// Load thư viện URL
		$this->load->helper('url');

		// Kết nối đến MODEL
		$this->load->model('m_tin_tuc');

		// Thên mới tin tức thông qua qua MODEL
		$this->m_tin_tuc->them_moi_tin_tuc();
	
		// Cho các bạn quay về trang Quản trị tin tức
		redirect(base_url()."admin/quan_tri_tin_tuc.html");
	}
}