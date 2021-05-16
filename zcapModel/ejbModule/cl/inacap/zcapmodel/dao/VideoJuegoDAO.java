package cl.inacap.zcapmodel.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import cl.inacap.zcapmodel.dto.VideoJuego;

/**
 * Session Bean implementation class VideoJuegoDAO
 */
@Stateless
@LocalBean
public class VideoJuegoDAO implements VideoJuegoDAOLocal {

	private static List<VideoJuego> juegos = new ArrayList<>();
    /**
     * Default constructor. 
     */
    public VideoJuegoDAO() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public void save(VideoJuego juego) {
		juegos.add(juego);
	}

	@Override
	public List<VideoJuego> getAll() {
		return juegos;
	}

	@Override
	public void delete(VideoJuego juego) {
		juegos.remove(juego);
	}

	@Override
	public List<VideoJuego> findByName(String nombre) {
		return juegos.stream().filter(j->j.getNombre().toLowerCase().contains(nombre.toLowerCase()))
				.collect(Collectors.toList());
	}

}
