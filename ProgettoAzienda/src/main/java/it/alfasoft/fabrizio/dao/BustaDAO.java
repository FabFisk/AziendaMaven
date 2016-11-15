package it.alfasoft.fabrizio.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.alfasoft.fabrizio.bean.BustaPagaOld;
import it.alfasoft.fabrizio.bean.Dipendente;
import it.alfasoft.fabrizio.utility.HibernateUtil;

public class BustaDAO {
	
	//1- Create
		public boolean createBusta(BustaPagaOld b){
			boolean res = false;
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				session.persist(b);
				tx.commit();
				res = true;
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return res;
		}	
		//2- Read
		
		public BustaPagaOld readBusta(String mese, int anno, Dipendente d) {
			BustaPagaOld b = null;
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				Query query = session
						.createQuery("from BustaPaga where mese=:meseInserito and anno=:annoInserito and dipendente=:dipendenteInserito");
				query.setString("meseInserito", mese);
				query.setInteger("annoInserito", anno);
				query.setLong("dipendenteInserito", d.getId_utente());
				b = (BustaPagaOld) query.uniqueResult();
				tx.commit();
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return b;
		}
		@SuppressWarnings("unchecked")
		public List<BustaPagaOld> getAll(Dipendente d) {
			List<BustaPagaOld> buste = new ArrayList<BustaPagaOld>();
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				Query query = session.createQuery("from BustaPaga where dipendente=:dipInserito");
				query.setLong("dipInserito", d.getId_utente());
				buste = query.list();
				tx.commit();
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return buste;
		}
		
		@SuppressWarnings("unchecked")
		public List<BustaPagaOld> getAll() {
			List<BustaPagaOld> buste = new ArrayList<BustaPagaOld>();
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				Query query = session.createQuery("from BustaPaga");
				buste = query.list();
				tx.commit();
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return buste;
		}
		
		public BustaPagaOld readBusta(long id_b){
			BustaPagaOld b = null;
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				b = session.get(BustaPagaOld.class, id_b);
				tx.commit();
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return b;
		}	
		//3- Update
		public boolean updateBusta(BustaPagaOld b){
			boolean res = false;
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				session.update(b);
				tx.commit();
				res = true;
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return res;
		}	
		
		//4- Delete
		public boolean deleteBusta(BustaPagaOld b){
			boolean res = false;
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				session.delete(b);
				tx.commit();
				res = true;
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return res;
		}
}
