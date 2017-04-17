<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pemain extends CI_Controller {

	public function index($idKlub)
	{
		$this->load->model('klub_model');		
		$data["pemain_list"] = $this->klub_model->getPemainKlub($idKlub);
		$this->load->view('pemain', $data);
	}

	public function create($idKlub)
	{	
		$this->load->helper('url','form');	
		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama', 'Nama Pemain', 'trim|required');
		$this->form_validation->set_rules('posisi', 'Posisi', 'trim|required');
		$this->form_validation->set_rules('tanggal_lahir', 'Tanggal Lahir', 'trim|required');
		$this->load->model('klub_model');
		if($this->form_validation->run()==FALSE)
		{
			$this->load->view('tambah_pemain_view');

		}else{
			$this->klub_model->insertPemain($idKlub);
			redirect('pemain/index/'.$this->uri->segment(3));
		}
	}
}