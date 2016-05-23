package br.com.azulcontrole.persistencia.entidade;

public class Empresa {
			  private Integer idEmpresa;
			  private Integer idAtividade;
			  private String  cnpjCpf;//'cnpj da empresa do sistema',
			  private String  razaoSocial;
			  private String  fantasia;
			  private String  contato;
			  private String  numeroTelefone;
			  private String  tipoTelefone;//'1 = fixo coml,2 = celular',
			  private String  endereco;
			  private String  numeroEndereco;
			  private String  complemento;
			  private String  bairro;
			  private String  cidade;
			  private String  uf;
			  private String  inscrEstadual;
			  private String  inscrMunicipal;
			  private String  cepEmpresa;
			  private String  pais;
			  private String  eMail;
			  private String  site;
			  private String  classificacaoEmpresa;//'1 = Juridica, 2 = Fisica\n',
			  private String  dataCadastro;
			  private String  dataAlteracao;
			  private String  sexo;//'1 = Masculino, 2 Feminino\n',
			  private String  status;//'0 = ativo, 1 = inativado',
			  
			public Integer getIdEmpresa() {
				return idEmpresa;
			}
			public void setIdEmpresa(Integer idEmpresa) {
				this.idEmpresa = idEmpresa;
			}
			public Integer getIdAtividade() {
				return idAtividade;
			}
			public void setIdAtividade(Integer idAtividade) {
				this.idAtividade = idAtividade;
			}
			public String getCnpjCpf() {
				return cnpjCpf;
			}
			public void setCnpjCpf(String cnpjCpf) {
				this.cnpjCpf = cnpjCpf;
			}
			public String getRazaoSocial() {
				return razaoSocial;
			}
			public void setRazaoSocial(String razaoSocial) {
				this.razaoSocial = razaoSocial;
			}
			public String getFantasia() {
				return fantasia;
			}
			public void setFantasia(String fantasia) {
				this.fantasia = fantasia;
			}
			public String getContato() {
				return contato;
			}
			public void setContato(String contato) {
				this.contato = contato;
			}
			public String getNumeroTelefone() {
				return numeroTelefone;
			}
			public void setNumeroTelefone(String numeroTelefone) {
				this.numeroTelefone = numeroTelefone;
			}
			public String getTipoTelefone() {
				return tipoTelefone;
			}
			public void setTipoTelefone(String tipoTelefone) {
				this.tipoTelefone = tipoTelefone;
			}
			public String getEndereco() {
				return endereco;
			}
			public void setEndereco(String endereco) {
				this.endereco = endereco;
			}
			public String getNumeroEndereco() {
				return numeroEndereco;
			}
			public void setNumeroEndereco(String numeroEndereco) {
				this.numeroEndereco = numeroEndereco;
			}
			public String getComplemento() {
				return complemento;
			}
			public void setComplemento(String complemento) {
				this.complemento = complemento;
			}
			public String getBairro() {
				return bairro;
			}
			public void setBairro(String bairro) {
				this.bairro = bairro;
			}
			public String getCidade() {
				return cidade;
			}
			public void setCidade(String cidade) {
				this.cidade = cidade;
			}
			public String getUf() {
				return uf;
			}
			public void setUf(String uf) {
				this.uf = uf;
			}
			public String getInscrEstadual() {
				return inscrEstadual;
			}
			public void setInscrEstadual(String inscrEstadual) {
				this.inscrEstadual = inscrEstadual;
			}
			public String getInscrMunicipal() {
				return inscrMunicipal;
			}
			public void setInscrMunicipal(String inscrMunicipal) {
				this.inscrMunicipal = inscrMunicipal;
			}
			public String getCepEmpresa() {
				return cepEmpresa;
			}
			public void setCepEmpresa(String cepEmpresa) {
				this.cepEmpresa = cepEmpresa;
			}
			public String getPais() {
				return pais;
			}
			public void setPais(String pais) {
				this.pais = pais;
			}
			public String geteMail() {
				return eMail;
			}
			public void seteMail(String eMail) {
				this.eMail = eMail;
			}
			public String getSite() {
				return site;
			}
			public void setSite(String site) {
				this.site = site;
			}
			public String getClassificacaoEmpresa() {
				return classificacaoEmpresa;
			}
			public void setClassificacaoEmpresa(String classificacaoEmpresa) {
				this.classificacaoEmpresa = classificacaoEmpresa;
			}
			public String getDataCadastro() {
				return dataCadastro;
			}
			public void setDataCadastro(String dataCadastro) {
				this.dataCadastro = dataCadastro;
			}
			public String getDataAlteracao() {
				return dataAlteracao;
			}
			public void setDataAlteracao(String dataAlteracao) {
				this.dataAlteracao = dataAlteracao;
			}
			public String getSexo() {
				return sexo;
			}
			public void setSexo(String sexo) {
				this.sexo = sexo;
			}
			public String getStatus() {
				return status;
			}
			public void setStatus(String status) {
				this.status = status;
			}

}
