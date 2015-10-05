package Bean;

public class Padawan extends Jedi {

	private Cavaleiro mestre;
	
	public Padawan() {	}

	public Padawan(Cavaleiro mestre) {
		super();
		this.mestre = mestre;
	}

	public Cavaleiro getMestre() {
		return mestre;
	}

	public void setMestre(Cavaleiro mestre) {
		this.mestre = mestre;
	}

}
