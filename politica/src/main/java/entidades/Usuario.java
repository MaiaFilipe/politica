/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.Collection;
import java.util.Locale;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author aluno
 */
@Entity
@Table(name = "usuario")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Usuario.findAll", query = "SELECT u FROM Usuario u")
    , @NamedQuery(name = "Usuario.findByCpf", query = "SELECT u FROM Usuario u WHERE u.cpf = :cpf")
    , @NamedQuery(name = "Usuario.findByCell", query = "SELECT u FROM Usuario u WHERE u.cell = :cell")
    , @NamedQuery(name = "Usuario.findBySenha", query = "SELECT u FROM Usuario u WHERE u.senha = :senha")
    , @NamedQuery(name = "Usuario.findByPosicao", query = "SELECT u FROM Usuario u WHERE u.posicao = :posicao")
    , @NamedQuery(name = "Usuario.findByEmail", query = "SELECT u FROM Usuario u WHERE u.email = :email")
    , @NamedQuery(name = "Usuario.findByDescricao", query = "SELECT u FROM Usuario u WHERE u.descricao = :descricao")
    , @NamedQuery(name = "Usuario.findByNome", query = "SELECT u FROM Usuario u WHERE u.nome = :nome")
    , @NamedQuery(name = "Usuario.findByNascimento", query = "SELECT u FROM Usuario u WHERE u.nascimento = :nascimento")
    , @NamedQuery(name = "Usuario.findByEstado", query = "SELECT u FROM Usuario u WHERE u.estado = :estado")
    , @NamedQuery(name = "Usuario.findById", query = "SELECT u FROM Usuario u WHERE u.id = :id")
    , @NamedQuery(name = "Usuario.findByUsuario", query = "SELECT u FROM Usuario u WHERE u.usuario = :usuario")
    , @NamedQuery(name = "Usuario.findByExtensao", query = "SELECT u FROM Usuario u WHERE u.extensao = :extensao")
    , @NamedQuery(name = "Usuario.findByTipo", query = "SELECT u FROM Usuario u WHERE u.tipo = :tipo")})
public class Usuario implements Serializable {

    @Column(name = "cpf")
    private Double cpf;

    @Column(name = "cell")
    private Double cell;

    //@Lob
    @Column(name = "foto")
    private byte[] foto;

    @OneToMany(mappedBy = "idUsuario")
    private Collection<Publicacao> publicacaoCollection;

    private static final long serialVersionUID = 1L;

    @Column(name = "senha")
    private String senha;

    @Column(name = "posicao")
    private String posicao;

    @Column(name = "email")
    private String email;

    @Column(name = "descricao")
    private String descricao;

    @Column(name = "nome")
    private String nome;

    @Column(name = "nascimento")
    private String nascimento;

    @Column(name = "estado")
    private String estado;

    @Id
    @Basic(optional = false)
    @NotNull
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "meugerador")
    @SequenceGenerator(name = "meugerador", sequenceName = "sq_usuario")
    @Column(name = "id")
    private Integer id;

    @Column(name = "usuario")
    private String usuario;

    @Column(name = "extensao")
    private String extensao;

    @Column(name = "tipo")
    private String tipo;

    public Usuario() {
    }

    public Usuario(Integer id) {
        this.id = id;
    }

    public Double getCell() {
        return cell;
    }

    public void setCell(Double cell) {
        this.cell = cell;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getPosicao() {
        return posicao;
    }

    public void setPosicao(String posicao) {
        this.posicao = posicao;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNascimento() {
        return nascimento;
    }

    public void setNascimento(String nascimento) {
        this.nascimento = nascimento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getExtensao() {
        return extensao;
    }

    public void setExtensao(String extensao) {
        this.extensao = extensao;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuario)) {
            return false;
        }
        Usuario other = (Usuario) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Usuario[ id=" + id + " ]";
    }

    public Double getCpf() {
        return cpf;
    }

    public String getCPFformatado() {
        DecimalFormatSymbols hackCPF = new DecimalFormatSymbols();
        hackCPF.setDecimalSeparator('-');
        hackCPF.setGroupingSeparator('.');

        DecimalFormat df = new DecimalFormat("#,###.##", hackCPF);
        return df.format(cpf);
    }

    public String getCELLformatado() {
        DecimalFormatSymbols hackCELL = new DecimalFormatSymbols();
        hackCELL.setDecimalSeparator('-');
        hackCELL.setGroupingSeparator('.');

        DecimalFormat df = new DecimalFormat("#", hackCELL);
        DecimalFormat weirdFormatter = new DecimalFormat();
        weirdFormatter.setGroupingSize(13);

        return df.format(cell);
    }

    public void setCpf(Double cpf) {
        this.cpf = cpf;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    @XmlTransient
    public Collection<Publicacao> getPublicacaoCollection() {
        return publicacaoCollection;
    }

    public void setPublicacaoCollection(Collection<Publicacao> publicacaoCollection) {
        this.publicacaoCollection = publicacaoCollection;
    }

}
