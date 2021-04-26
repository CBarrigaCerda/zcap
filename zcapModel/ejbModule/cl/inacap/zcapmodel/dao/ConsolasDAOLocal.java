package cl.inacap.zcapmodel.dao;

import java.util.List;

import javax.ejb.Local;

import cl.inacap.zcapmodel.dto.Consola;

@Local
public interface ConsolasDAOLocal {

	void safe (Consola consola);
	List<Consola> getAll();
	void delete (Consola consola);
	List<Consola> filterByName(String nombre);
}
