package it.alfasoft.fabrizio.service;

import java.security.MessageDigest;
import java.util.List;

import it.alfasoft.fabrizio.bean.*;
import it.alfasoft.fabrizio.dao.*;

public class Gestione {
	
	UtenteDAO uDAO = new UtenteDAO();
	AdminDAO aDAO = new AdminDAO();
	ClienteDAO cDAO = new ClienteDAO();
	DipendenteDAO dDAO = new DipendenteDAO();
	RubricaDao rDAO = new RubricaDao();
	VoceDao vDAO = new VoceDao();	
	ServizioRubrica s = new ServizioRubrica();
	
	public boolean existUserBoolean(String username, String password) {
		
		boolean res = false;
		Utente u = uDAO.readUserUser(username);
		if(u != null && u.getPassword().equals(password)){
			res=true;
		}
		return res;

	}
	
	public void setBeanUtente(Utente u){
		uDAO.fillDatiUtente(u);
	}
	
	public void setBeanAdmin(Admin a){
		aDAO.fillDatiAdmin(a);
	}
	
	public void setBeanCliente(Cliente c){
		cDAO.fillDatiCliente(c);
	}
	
	public void setBeanDipendente(Dipendente d){
		dDAO.fillDatiDipendente(d);
	}
	
	public Utente readUserUserPsw(String username, String password){
		return uDAO.readUserUserPsw(username, password);
	}
	
	public Utente readUserNomeCog(String nome, String cognome){
		return uDAO.readUserNomeCog(nome, cognome);
	}

	
	public Utente readUserUser(String username){
		return uDAO.readUserUser(username);
	}
	
	public void createCliente(Cliente c){
		cDAO.createUser(c);
		Rubrica r = s.registraRubrica(c.getNome(), c.getCognome());
		c.setRubrica(r);
		cDAO.updateUser(c);
	}
	
	public void createDip(Dipendente d){
		dDAO.createUser(d);
		Rubrica r = s.registraRubrica(d.getNome(), d.getCognome());
		d.setRubrica(r);
		dDAO.updateUser(d);
	}

	public List<Utente> getListClienti(){
		return cDAO.getAll();
	}
	
	public List<Utente> getListDipendenti(){
		return dDAO.getAll();
	}
	
	public List<Voce> getAllVoci(Rubrica r){
		return s.getAll(r);
	}
	
	public void updateUser(Utente u){
		uDAO.createUser(u);
	}
	
	public String codificaPsw(String psw){	
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] array = md.digest(psw.getBytes());
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < array.length; ++i) {
				sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100)
						.substring(1, 3));
			}
			return sb.toString();
		} catch (java.security.NoSuchAlgorithmException e) {
		}
		return null;
	}
	
	public boolean readVoce(Rubrica r, Voce v){
		return s.readVoce(r, v);
	}
	
	public void createVoce(Rubrica r, Voce v){
		s.createVoce(r, v);
	}
	
	public Rubrica trovaRubrica(Utente u){
		Utente user = uDAO.readUserUserPsw(u.getUsername(), u.getPassword());
		return user.getRubrica();
	}
}
