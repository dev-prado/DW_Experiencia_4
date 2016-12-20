<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Peliculas extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	public function __construct() {
 		parent::__construct();
 		$this->load->model('Peliculas_model');
 	}
	public function index()
	{
		$data['peliculas'] = $this->Peliculas_model->getPeliculas()->result();
		$this->load->view('peliculas', $data);
	}

	public function arrendar() {
		// Por tema de tiempo no alcancé implementar la logica aqui se usa el CRUD
		$id = $this->input->post('id');
		$data['id'] = $id;
		$this->load->view('arrendar', $data);
	}

	public function devolver() {
		$id = $this->input->post('id');
		$data['id'] = $id;
		$this->load->view('devolver', $data);
	}

}
