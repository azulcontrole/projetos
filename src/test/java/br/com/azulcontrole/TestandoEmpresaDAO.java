package br.com.azulcontrole;

import br.com.azulcontrole.persistencia.jdbc.EmpresaSPDAO;
import br.com.azulcontrole.persistencia.storeprocedure.EmpresaSP;

public class TestandoEmpresaDAO {

	public static void main(String[] args) {
		testChamaProc();

	}

	private static void testChamaProc() {
		
		EmpresaSP empresa = new EmpresaSP();
		empresa.setpOpt(1);
	    empresa.setpIdEmpresa(0);
	    empresa.setpIdAtividade(5);
	    empresa.setpCnpjCpf("22.080.738/0001-78");
	    empresa.setpClassEmpresa(1);
	    empresa.setpRazaoSocial("EMPRESA FICTICIA LTDA");
	    empresa.setpFantasia("FICCAO CIENTIFICA");
	    empresa.setpContato("JOSE ARLINDO DOS ANZOIS");
	    empresa.setpNumeroTelefone("NUMTELEFONE");
	    empresa.setpTipoTelefone(1);
	    empresa.setpEndereco("setpEndereco");
	    empresa.setpNumeroEndereco("333333");
	    empresa.setpComplemento("COMPLEMENTO");
	    empresa.setpBairro("BAIRRO");
	    empresa.setpCidade("CIDADE");
	    empresa.setpUf("UF");
	    empresa.setpInscrEstadual("INCESTADUAL");
	    empresa.setpInscrMunicipal("INCMUNICIPAL");
	    empresa.setpCepEmpresa("87020080");
	    empresa.setpPais("PAIS");
	    empresa.setpEMail("FICTICIA@EMAIL.COM.BR");
	    empresa.setpSite("WWW.FICTICIA.COM.BR");
	    empresa.setpSexo("1");
	    empresa.setpStatus("1");
		
		EmpresaSPDAO empresaspdao = new EmpresaSPDAO();
		empresaspdao.chamaProcedure(empresa);

		
	}

}
