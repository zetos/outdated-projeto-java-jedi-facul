package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Bean.Jedi;
import Util.ConnectionFactory;

public class JediDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private Jedi jedi;
	
	public JediDAO() throws Exception {
		try {
			this.conn = ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new Exception("erro: \n" + e.getMessage(), e);
		}
	}

	public void salvar(Jedi jedi) throws Exception {
		if (jedi == null)
			throw new Exception("O valor passado nao pode ser nulo");

		try {
			String SQL = "INSERT INTO tbJedi (nome, especie, planeta, status,"
							+ " sexo, idade, midiChlorians, classe)"
							+ " values (?, ?, ?, ?, ?, ?, ?, ?)";
			ps = conn.prepareStatement(SQL);
			ps.setString(1, jedi.getNome());
			ps.setString(2, jedi.getEspecie());
			ps.setString(3, jedi.getPlaneta());
			ps.setString(4, jedi.getStatus());
			ps.setString(5, jedi.getSexo());
			ps.setInt(6, jedi.getIdade());
			ps.setInt(7, jedi.getMidiChlorians());
			ps.setString(8, jedi.getClasse());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao inserir dados " + sqle, sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}
	
	public void atualizar(Jedi jedi) throws Exception {
		if (jedi == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "UPDATE tbJedi set nome=?, especie=?, planeta=?, status=?,"
							+ " sexo=?, idade=?, midiChlorians=?, classe=?"
							+ " WHERE nome=?";
			ps = conn.prepareStatement(SQL);	
			ps.setString(1, jedi.getNome());
			ps.setString(2, jedi.getEspecie());
			ps.setString(3, jedi.getPlaneta());
			ps.setString(4, jedi.getStatus());
			ps.setString(5, jedi.getSexo());
			ps.setInt(6, jedi.getIdade());
			ps.setInt(7, jedi.getMidiChlorians());
			ps.setString(8, jedi.getClasse());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao alterar dados " + sqle, sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	public void excluir(Jedi jedi) throws Exception {
		if (jedi == null)
			throw new Exception("O valor passado nao pode ser nulo");
		
		try {
			String SQL = "DELETE FROM tbJedi WHERE nome=?";
			ps = conn.prepareStatement(SQL);
			ps.setString(1, jedi.getNome());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao excluir dados " + sqle, sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}
	
	public Jedi procurarJedi(String nome) throws Exception {
		try {
			String SQL = "SELECT  * FROM tbJedi WHERE nome=?";
			ps = conn.prepareStatement(SQL);
			ps.setString(1, nome);
			rs = ps.executeQuery();
			if (rs.next()) {
				String especie = rs.getString(2);
				String planeta = rs.getString(3);
				String status = rs.getString(4);
				String sexo = rs.getString(5);
				int idade = rs.getInt(6);
				int midiChlorians = rs.getInt(7);
				String classe = rs.getString(8);
				jedi = new Jedi(nome, especie, planeta, status, sexo, idade, midiChlorians, classe);
			}
			return jedi;
		} catch (SQLException sqle) {
			throw new Exception(sqle);	
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}

	public List<Jedi> todosJedi() throws Exception {
		try {
			ps = conn.prepareStatement("SELECT * FROM tbJedi");
			rs = ps.executeQuery();
			List<Jedi> list = new ArrayList<Jedi>();
			while (rs.next()) {
				String nome = rs.getString(1);
				String especie = rs.getString(2);
				String planeta = rs.getString(3);
				String status = rs.getString(4);
				String sexo = rs.getString(5);
				int idade = rs.getInt(6);
				int midiChlorians = rs.getInt(7);
				String classe = rs.getString(8);
				list.add(new Jedi(nome, especie, planeta, status, sexo, idade, midiChlorians, classe));
			}
			return list;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
}