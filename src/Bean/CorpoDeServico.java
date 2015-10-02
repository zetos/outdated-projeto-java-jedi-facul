package Bean;

public class CorpoDeServico extends Jedi {
	private int divisao;
	
	public CorpoDeServico() {	}

	public CorpoDeServico(int divisao) {
		this.divisao = divisao;
	}

	public int getDivisao() {
		return divisao;
	}

	public void setDivisao(int divisao) {
		this.divisao = divisao;
	}
	
}
