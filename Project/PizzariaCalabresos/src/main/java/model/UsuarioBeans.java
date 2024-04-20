package model;

public class UsuarioBeans {
	private int id_Usuario;
	private String user_Usuario;
	private String password_Usuario;
	private int nivel_acesso_Usuario;
	private String nome_Usuario;
	private String cpf_Usuario;
	private String complemento_Usuario;
	private String celular_Usuario;
	private String rua_Usuario;
	private String bairro_Usuario;
	private int numeroCasa_Usuario;
	
	public UsuarioBeans() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UsuarioBeans(int id_Usuario, String user_Usuario, String password_Usuario, int nivel_acesso_Usuario,
			String nome_Usuario, String cpf_Usuario, String complemento_Usuario, String celular_Usuario,
			String rua_Usuario, String bairro_Usuario, int numeroCasa_Usuario) {
		super();
		this.id_Usuario = id_Usuario;
		this.user_Usuario = user_Usuario;
		this.password_Usuario = password_Usuario;
		this.nivel_acesso_Usuario = nivel_acesso_Usuario;
		this.nome_Usuario = nome_Usuario;
		this.cpf_Usuario = cpf_Usuario;
		this.complemento_Usuario = complemento_Usuario;
		this.celular_Usuario = celular_Usuario;
		this.rua_Usuario = rua_Usuario;
		this.bairro_Usuario = bairro_Usuario;
		this.numeroCasa_Usuario = numeroCasa_Usuario;
	}

	public int getId_Usuario() {
		return id_Usuario;
	}
	public void setId_Usuario(int id_Usuario) {
		this.id_Usuario = id_Usuario;
	}
	public String getUser_Usuario() {
		return user_Usuario;
	}
	public void setUser_Usuario(String user_Usuario) {
		this.user_Usuario = user_Usuario;
	}
	public String getPassword_Usuario() {
		return password_Usuario;
	}
	public void setPassword_Usuario(String password_Usuario) {
		this.password_Usuario = password_Usuario;
	}
	public int getNivel_acesso_Usuario() {
		return nivel_acesso_Usuario;
	}
	public void setNivel_acesso_Usuario(int nivel_acesso_Usuario) {
		this.nivel_acesso_Usuario = nivel_acesso_Usuario;
	}
	public String getNome_Usuario() {
		return nome_Usuario;
	}
	public void setNome_Usuario(String nome_Usuario) {
		this.nome_Usuario = nome_Usuario;
	}
	public String getCpf_Usuario() {
		return cpf_Usuario;
	}
	public void setCpf_Usuario(String cpf_Usuario) {
		this.cpf_Usuario = cpf_Usuario;
	}
	public String getComplemento_Usuario() {
		return complemento_Usuario;
	}
	public void setComplemento_Usuario(String complemento_Usuario) {
		this.complemento_Usuario = complemento_Usuario;
	}
	public String getCelular_Usuario() {
		return celular_Usuario;
	}
	public void setCelular_Usuario(String celular_Usuario) {
		this.celular_Usuario = celular_Usuario;
	}
	public String getRua_Usuario() {
		return rua_Usuario;
	}
	public void setRua_Usuario(String rua_Usuario) {
		this.rua_Usuario = rua_Usuario;
	}
	public String getBairro_Usuario() {
		return bairro_Usuario;
	}
	public void setBairro_Usuario(String bairro_Usuario) {
		this.bairro_Usuario = bairro_Usuario;
	}
	public int getNumeroCasa_Usuario() {
		return numeroCasa_Usuario;
	}
	public void setNumeroCasa_Usuario(int numeroCasa_Usuario) {
		this.numeroCasa_Usuario = numeroCasa_Usuario;
	}
}
