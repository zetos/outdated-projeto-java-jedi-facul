package Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import Util.ConnectionFactory;
import Bean.Jedi;

public class JediDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public JediDAO() throws Exception {
		// chama a classe ConnectionFactory e estabele uma conexão
		try {
			this.conn = ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new Exception("erro: \n" + e.getMessage(), e);
		}
	}

	// método de salvar
	public void salvar(Jedi jedi) throws Exception {
		if (jedi == null)
			throw new Exception("O valor passado nao pode ser nulo");

		try {
			String SQL = "INSERT INTO tbJedi (nome, especie, planeta, status, sexo, idade, midiChlorians) values (?, ?, ?, ?, ?, ?, ?)";
			ps = conn.prepareStatement(SQL);
			ps.setString(1, jedi.getNome());
			ps.setString(2, jedi.getEspecie());
			ps.setString(3, jedi.getPlaneta());
			ps.setString(4, jedi.getStatus());
			ps.setString(5, jedi.getSexo());
			ps.setInt(6, jedi.getIdade());
			ps.setInt(7, jedi.getMidiChlorians());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao inserir dados " + sqle, sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}
	// método de atualizar

	public void atualizar(Jedi jedi) throws Exception {
		if (jedi == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "UPDATE tbJedi set nome=?, especie=?, planeta=?, status=?, sexo=?, idade=?, midiChlorians=? WHERE nome=?";
			ps = conn.prepareStatement(SQL);	
			ps.setString(1, jedi.getNome());
			ps.setString(2, jedi.getEspecie());
			ps.setString(3, jedi.getPlaneta());
			ps.setString(4, jedi.getStatus());
			ps.setString(5, jedi.getSexo());
			ps.setInt(6, jedi.getIdade());
			ps.setInt(7, jedi.getMidiChlorians());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao alterar dados " + sqle, sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// método de excluir
	public void excluir(Jedi jedi) throws Exception {
		if (jedi == null)
			throw new Exception("O valor passado nao pode ser nulo");
		
		try {
			String SQL = "DELETE FROM tbJedi WHERE caAluno = ?";
			ps = conn.prepareStatement(SQL);
			ps.setString(1, jedi.getNome());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao excluir dados " + sqle, sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// Listar todos os alunos
	public List<Jedi> todosAlunos() throws Exception {
		try {
			ps = conn.prepareStatement("SELECT * FROM tbJedi");
			rs = ps.executeQuery();
			List<Jedi> list = new ArrayList<Jedi>();
			while (rs.next()) {
				String nome = rs.getString(1);
				String especie = rs.getString(1);
				String planeta = rs.getString(1);
				String status = rs.getString(1);
				String sexo = rs.getString(1);
				int idade = rs.getInt(1);
				int midiChlorians = rs.getInt(1);
				list.add(new Jedi(nome, especie, planeta, status, sexo, idade, midiChlorians));
			}
			return list;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
}