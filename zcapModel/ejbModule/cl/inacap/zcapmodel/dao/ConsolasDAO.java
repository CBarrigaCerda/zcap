package cl.inacap.zcapmodel.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import cl.inacap.zcapmodel.dto.Consola;

/**
 * Session Bean implementation class ConsolasDAO
 */
@Stateless
@LocalBean
public class ConsolasDAO implements ConsolasDAOLocal {

	private static List<Consola> consolas = new ArrayList<>();

	@Override
	public void safe(Consola consola) {
		consolas.add(consola);
		
	}

	@Override
	public List<Consola> getAll() {
		return consolas;
	}

	@Override
	public void delete(Consola consola) {
		consolas.remove(consola);
	}

	@Override
	public List<Consola> filterByName(String nombre) {
		return consolas.stream().filter(c->c.getNombre().contains(nombre)).collect(Collectors.toList());
	}

}
