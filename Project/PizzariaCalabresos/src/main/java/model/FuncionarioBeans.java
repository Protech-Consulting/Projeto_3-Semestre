package model;

public class FuncionarioBeans {
	// Classe Funcionário:
	private String nome_Funcionario;
	private String sobrenome_Funcionario;
	private String cidade_Funcionario;
	private String estado_Funcionario;
	private int cep_Funcionario;
	private String email_Funcionario;
	private String senha_Funcionario;
	private String confirmacao_senha_Funcionario;
	
	public FuncionarioBeans() {
		super();
	}
	
	public FuncionarioBeans(String nome_Funcionario, String sobrenome_Funcionario, String cidade_Funcionario, String estado_Funcionario, int cep_Funcionario, String email_Funcionario, String senha_Funcionario, String confirmacao_senha_Funcionario) {
		super();
		this.nome_Funcionario = nome_Funcionario;
		this.sobrenome_Funcionario = sobrenome_Funcionario;
		this.cidade_Funcionario = cidade_Funcionario;
		this.estado_Funcionario = estado_Funcionario;
		this.cep_Funcionario = cep_Funcionario;
		this.email_Funcionario = email_Funcionario;
		this.senha_Funcionario = senha_Funcionario;
		this.confirmacao_senha_Funcionario = confirmacao_senha_Funcionario;
	}

	public String getNome_Funcionario() {
		return nome_Funcionario;
	}

	public void setNome_Funcionario(String nome_Funcionario) {
		this.nome_Funcionario = nome_Funcionario;
	}

	public String getSobrenome_Funcionario() {
		return sobrenome_Funcionario;
	}

	public void setSobrenome_Funcionario(String sobrenome_Funcionario) {
		this.sobrenome_Funcionario = sobrenome_Funcionario;
	}

	public String getCidade_Funcionario() {
		return cidade_Funcionario;
	}

	public void setCidade_Funcionario(String cidade_Funcionario) {
		this.cidade_Funcionario = cidade_Funcionario;
	}

	public String getEstado_Funcionario() {
		return estado_Funcionario;
	}

	public void setEstado_Funcionario(String estado_Funcionario) {
		this.estado_Funcionario = estado_Funcionario;
	}

	public int getCep_Funcionario() {
		return cep_Funcionario;
	}

	public void setCep_Funcionario(int cep_Funcionario) {
		this.cep_Funcionario = cep_Funcionario;
	}

	public String getEmail_Funcionario() {
		return email_Funcionario;
	}

	public void setEmail_Funcionario(String email_Funcionario) {
		this.email_Funcionario = email_Funcionario;
	}

	public String getSenha_Funcionario() {
		return senha_Funcionario;
	}

	public void setSenha_Funcionario(String senha_Funcionario) {
		this.senha_Funcionario = senha_Funcionario;
	}

	public String getConfirmacao_senha_Funcionario() {
		return confirmacao_senha_Funcionario;
	}

	public void setConfirmacao_senha_Funcionario(String confirmacao_senha_Funcionario) {
		this.confirmacao_senha_Funcionario = confirmacao_senha_Funcionario;
	}
	
	
}
