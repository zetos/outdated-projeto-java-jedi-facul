package Bean;

public class Cavaleiro extends Jedi{

	private int divisao;
	private Padawan padawan;
	private Cavaleiro mestre;
	
	public Cavaleiro() {	}
	
	public Cavaleiro(int divisao, Padawan padawan, Cavaleiro mestre) {
		super();
		this.divisao = divisao;
		this.padawan = padawan;
		this.mestre = mestre;
	}
	
	public int getDivisao() {
		return divisao;
	}
	public void setDivisao(int divisao) {
		this.divisao = divisao;
	}
	public Padawan getPadawan() {
		return padawan;
	}
	public void setPadawan(Padawan padawan) {
		this.padawan = padawan;
	}
	public Cavaleiro getMestre() {
		return mestre;
	}
	public void setMestre(Cavaleiro mestre) {
		this.mestre = mestre;
	}
	
}
