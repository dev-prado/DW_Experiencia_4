<?php
if(!defined('BASEPATH')) exit('No direct script access allowed');

class Peliculas_model extends CI_Model {

  public function __construct() {
    parent::__construct();
  }

  public function getPeliculas() {
    $this->db->select('*');
    $this->db->from('Peliculas');
    $query = $this->db->get();

    if($query->num_rows() > 0) {
      return $query;
    } else {
      return false;
    }
  }

  public function getCantidadStockPeliculas ($id) {
    $this->db->select('cantidad_stock');
    $this->db->from('Peliculas');
    $this->db->where('id', $id);
    $query = $this->db->get();

    if($query->num_rows() > 0) {
      return $query;
    } else {
      return false;
    }
  }

  public function getCantidadArredandas ($id) {
    $this->db->select('cantidad_arredandas');
    $this->db->from('Peliculas');
    $this->db->where('id', $id);
    $query = $this->db->get();

    if($query->num_rows() > 0) {
      return $query;
    } else {
      return false;
    }
  }

  public function updateCantidadArredandas ($id, $cantidad_arredandas) {
    $data = array(
      'cantidad_arredandas' => $cantidad_arredandas
    );

    $this->db->where('id', $id);
    $this->db->update('Peliculas', $data);
  }
}

?>
