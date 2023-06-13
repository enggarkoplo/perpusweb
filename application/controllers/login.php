<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->helper('download');
		$this->load->library('pagination');
		$this->load->helper('cookie');
		$this->load->model('login_model');
	}

	public function index()
	{
		$this->load->view('templates/header_login');
		$this->load->view('login/index');
		$this->load->view('templates/footer_login');
	}



	public function proses_login()
	{
		$username = $this->input->post('user');
		$password = $this->input->post('pwd');
		// var_dump($password);
		// die;

		$user = $this->db->get_where('pengguna', ['nama' => $username])->row_array();

		// var_dump($user);
		// die;

		$cek = $this->login_model->cek_login($user, 'pengguna')->num_rows();
		$data = $this->login_model->cek_login($user, 'pengguna')->row_array();
		// var_dump($cek);
		// die;

		// if (password_verify($password, $data['pass'])) {
		// 	$respon = array('respon' => 'failed');
		// 	echo json_encode($respon);
		// }


		if ($cek > 0 && password_verify($password, $data['pass'])) {
			$sessi = array(
				'id_user' => $data['id_user'],
				'username' => $data['nama'],
				'email' => $data['email'],
				'notelp' => $data['notelp'],
				'status' => $data['status'],
				'level' => $data['level'],
				'foto' => $data['foto'],
				'login' => 'perpusweb',
			);

			$this->session->set_userdata($sessi);

			$respon = array('respon' => 'success');
			echo json_encode($respon);
			redirect('home');
		}

		$respon = array('respon' => 'failed');
		echo json_encode($respon);
		redirect('login');
	}

	public function logout()
	{
		$this->session->sess_destroy();
		$respon = array('respon' => 'success');
		echo json_encode($respon);
	}
}
