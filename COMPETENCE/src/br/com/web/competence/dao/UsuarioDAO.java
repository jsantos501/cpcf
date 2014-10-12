package br.com.web.competence.dao;

import java.sql.Connection;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.sql.Statement;  
import java.util.Vector;  
	  

import javax.swing.JOptionPane;  

import br.com.web.competence.model.Usuario;
	  

	public class UsuarioDAO {  
	   // Configura essas variáveis de acordo com o seu banco  
	   private final String URL = "jdbc:mysql://localhost/javafx_crud",  
	         NOME = "root", SENHA = "senha";  
	  
	   private Connection con;  
	   private Statement comando;  
	  
	   public void apagar(String rg) {  
	      conectar();  
	      try {  
	         comando  
	               .executeUpdate("DELETE FROM pessoa WHERE rg = '" + rg  
	                     + "';");  
	      } catch (SQLException e) {  
	         imprimeErro("Erro ao apagar pessoas", e.getMessage());  
	      } finally {  
	         fechar();  
	      }  
	   }  
	  
	   public Vector<Usuario> buscarTodos() {  
	      conectar();  
	      Vector<Usuario> resultados = new Vector<Usuario>();  
	      ResultSet rs;  
	      try {  
	         rs = comando.executeQuery("SELECT * FROM competence.tb01_usuario");  
	         while (rs.next()) {  
	        	 Usuario temp = new Usuario();  
	            // pega todos os atributos da pessoa  
	            temp.setId(rs.getString("rg"));  
	            temp.setUsuario(rs.getString("nome"));  
	            temp.setNome(rs.getString("idade"));  
	            temp.setSenha(rs.getString("cidade"));  
	            temp.setPerfil(rs.getString("estado"));  
	            temp.setTipo(rs.getString("estado"));  
	            temp.setSituacao(rs.getString("estado"));  
	            temp.setEmail(rs.getString("estado"));  
	            temp.setCelular(rs.getString("estado"));  
	            
	            
	            resultados.add(temp);  
	         }  
	         return resultados;  
	      } catch (SQLException e) {  
	         imprimeErro("Erro ao buscar pessoas", e.getMessage());  
	         return null;  
	      }  
	   }  
	  
	   public void atualizar(Usuario pessoa) {  
	      conectar();  
	      String com = "";/*"UPDATE pessoa SET nome = '" + pessoa.getNome()  
	            + "', idade =" + pessoa.getIdade() + ", cidade = '"  
	            + pessoa.getCidade() + "', estado ='" + pessoa.getEstado()  
	            + "' WHERE  rg = '" + pessoa.getRg() + "';";  
	      System.out.println("Atualizada!");  
	    */
	      try {  
	         comando.executeUpdate(com);  
	      } catch (SQLException e) {  
	         e.printStackTrace();  
	      } finally {  
	         fechar();  
	      }  
	   }  
	  
	   public Vector<Usuario> buscar(String rg) {  
	      conectar();  
	      Vector<Usuario> resultados = new Vector<Usuario>();  
	      ResultSet rs;  
	      try {  
	         rs = comando.executeQuery("SELECT * FROM pessoa WHERE rg LIKE '"  
	               + rg + "%';");  
	         while (rs.next()) {  
	        	 Usuario temp = new Usuario();  
	            /*// pega todos os atributos da pessoa  
	            temp.setRg(rs.getString("rg"));  
	            temp.setNome(rs.getString("nome"));  
	            temp.setIdade(rs.getInt("idade"));  
	            temp.setCidade(rs.getString("cidade"));  
	            temp.setEstado(rs.getString("estado"));  
	            */
	            resultados.add(temp);  
	         }  
	         return resultados;  
	      } catch (SQLException e) {  
	         imprimeErro("Erro ao buscar pessoa", e.getMessage());  
	         return null;  
	      }  
	  
	   }  
	  
	   public void insere(Usuario pessoa){  
	      conectar();  
	      try {  
	      /*   comando.executeUpdate("INSERT INTO Pessoa VALUES('"  
	               + pessoa.getRg() + "', '" + pessoa.getNome() + "',"  
	               + pessoa.getIdade() + ",'" + pessoa.getCidade() + "','"  
	               + pessoa.getEstado() + "')");  
	        */ System.out.println("Inserida!");  
	      } finally {  
	         fechar();  
	      }  
	   }  
	  
	   private void conectar() {  
	      try {  
	         con = ConFactory.conexao(URL, NOME, SENHA, ConFactory.MYSQL);  
	         comando = con.createStatement();  
	         System.out.println("Conectado!");  
	      } catch (ClassNotFoundException e) {  
	         imprimeErro("Erro ao carregar o driver", e.getMessage());  
	      } catch (SQLException e) {  
	         imprimeErro("Erro ao conectar", e.getMessage());  
	      }  
	   }  
	  
	   private void fechar() {  
	      try {  
	         comando.close();  
	         con.close();  
	         System.out.println("Conexão Fechada");  
	      } catch (SQLException e) {  
	         imprimeErro("Erro ao fechar conexão", e.getMessage());  
	      }  
	   }  
	  
	   private void imprimeErro(String msg, String msgErro) {  
	      JOptionPane.showMessageDialog(null, msg, "Erro crítico", 0);  
	      System.err.println(msg);  
	      System.out.println(msgErro);  
	      System.exit(0);  
	   }  
	} 
