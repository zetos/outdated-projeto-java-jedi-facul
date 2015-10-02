package Bean;

public class Jedi {
	
	private String nome;
	private String especie;
	private String planeta;
	private String status;
	private String sexo;
	private int idade;
	private int midiChlorians;
	
	public Jedi() {	}

	public Jedi(String nome, String especie, String planeta, String status, String sexo, int idade, int midiChlorians) {
		this.nome = nome;
		this.especie = especie;
		this.planeta = planeta;
		this.status = status;
		this.sexo = sexo;
		this.idade = idade;
		this.midiChlorians = midiChlorians;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEspecie() {
		return especie;
	}
	public void setEspecie(String especie) {
		this.especie = especie;
	}
	public String getPlaneta() {
		return planeta;
	}
	public void setPlaneta(String planeta) {
		this.planeta = planeta;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public int getIdade() {
		return idade;
	}
	public void setIdade(int idade) {
		this.idade = idade;
	}
	public int getMidiChlorians() {
		return midiChlorians;
	}
	public void setMidiChlorians(int midiChlorians) {
		this.midiChlorians = midiChlorians;
	}
	
}
