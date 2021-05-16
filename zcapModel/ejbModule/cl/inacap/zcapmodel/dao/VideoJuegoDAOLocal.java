package cl.inacap.zcapmodel.dao;

import java.util.List;

import javax.ejb.Local;

import cl.inacap.zcapmodel.dto.VideoJuego;

@Local
public interface VideoJuegoDAOLocal {

	void save(VideoJuego juego);
	List<VideoJuego> getAll();
	void delete (VideoJuego juego);
	List<VideoJuego> findByName(String nombre);
}
