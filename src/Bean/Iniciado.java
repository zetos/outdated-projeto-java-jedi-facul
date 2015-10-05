package Bean;

public class Iniciado extends Jedi {

	private String templo;
	private String cla;
	
	public Iniciado() {	}
	
	public Iniciado(String templo, String cla) {
		this.templo = templo;
		this.cla = cla;
	}	
	
	public String getTemplo() {
		return templo;
	}
	public void setTemplo(String templo) {
		this.templo = templo;
	}
	public String getCla() {
		return cla;
	}
	public void setCla(String cla) {
		this.cla = cla;
	}
	
}
