package br.com.azulcontrole;

import br.com.azulcontrole.persistencia.jdbc.PessoaProcDAO;
import br.com.azulcontrole.persistencia.storeprocedure.PessoaSP;

public class TestandoPessoaProcDAO {
	
	public static void main (String[] args) {
		
		testChamaProc();
	}

	private static void testChamaProc() {
		PessoaSP pessoaproc = new PessoaSP();
		pessoaproc.setpOpt(1);
		pessoaproc.setpRet(0);
		pessoaproc.setpIdempresa(4);
		pessoaproc.setpCnpjCpf("666.444.444-44");
		pessoaproc.setpTpPessoa(1);
		pessoaproc.setpClasse(2);
		pessoaproc.setpNome("TESTE1 JAVA PROCEDURE");
		pessoaproc.setpNomeFantasia("TJPROCEDURE");
		pessoaproc.setpStatus(0);
		pessoaproc.setpContato("CONTATO JAVA PROCEDURE");
		pessoaproc.setpInscrEstadual("pInscrEstadual");
		pessoaproc.setpInscrMunicipal("pInscrMunicipal");
		pessoaproc.setpNumeroTelefone("pTelefone");
		pessoaproc.setpTipoTelefone(1);
		pessoaproc.setpEmail("pEmail@email.com.br");
		pessoaproc.setpSite("www.pSite.com.br");
		pessoaproc.setpLogradouroEndereco("pLogradouroEndereco");
		pessoaproc.setpComplementoEndereco("pComplementoEndereco");
		pessoaproc.setpNumeroEndereco("NumEnd");
		pessoaproc.setpCepEndereco("87.020.080");
		pessoaproc.setpBairroEndereco("pBairroEndereco");
		pessoaproc.setpCidadeEndereco("pCidadeEndereco");
		pessoaproc.setpUfEndereco("UF");
		pessoaproc.setpTipoEndereco(2);
		pessoaproc.setpRgFisica("RGFis");
		pessoaproc.setpOrgaoRgFisica("org");
		pessoaproc.setpNascimentoFisica("12/03/1966");
		pessoaproc.setpEcivilFisica(1);
		pessoaproc.setpSexoFisica(1);
		pessoaproc.setpProfissaoFisica("pProfissaoFisica");
		pessoaproc.setpIdAtividades(1);
		pessoaproc.setpDataInicio("23/05/2016");
		pessoaproc.setpRendaFisica(1150.58);
		pessoaproc.setpPrestacaoServico("PrestacaoServico");
		pessoaproc.setpIdDepartamento(2);
		pessoaproc.setpFuncaoFuncionario("pFuncaoFunc");
		pessoaproc.setpLoginFuncionario("pLogin");
		pessoaproc.setpSenhaFuncionario("pSenha");
		pessoaproc.setpAdmissaoFuncionario("23/05/2016");
		pessoaproc.setpDataAbertura("26/05/2016");
		pessoaproc.setpIdMatricula(0);
		pessoaproc.setpAcessoTotal("1");
		
		PessoaProcDAO pessoaspdao = new PessoaProcDAO();
		pessoaspdao.chamaProcedure(pessoaproc);
		
//		System.out.println("Salvo com sucesso"+" | ");
		
		
	}

}
