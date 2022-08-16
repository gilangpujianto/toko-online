<?php

class Model_kategori extends CI_Model {

    public function data_elektronik() {
        return $this->db->get_where("tb_barang", array('kategori' => 'elektronik'));
    }

    public function data_pakaian_laki() {
        return $this->db->get_where("tb_barang", array('kategori' => 'laki'));
    }

    public function data_pakaian_wanita() {
        return $this->db->get_where("tb_barang", array('kategori' => 'wanita'));
    }

    public function data_pakaian_anak() {
        return $this->db->get_where("tb_barang", array('kategori' => 'anak'));
    }

    public function data_peralatan_olahraga() {
        return $this->db->get_where("tb_barang", array('kategori' => 'olahraga'));
    }
}

?>