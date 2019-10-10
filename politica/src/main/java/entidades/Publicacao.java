/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author aluno
 */
@Entity
@Table(name = "publicacao")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Publicacao.findAll", query = "SELECT p FROM Publicacao p")
    , @NamedQuery(name = "Publicacao.findByConteudo", query = "SELECT p FROM Publicacao p WHERE p.conteudo = :conteudo")
    , @NamedQuery(name = "Publicacao.findByTitulo", query = "SELECT p FROM Publicacao p WHERE p.titulo = :titulo")
    , @NamedQuery(name = "Publicacao.findByIdp", query = "SELECT p FROM Publicacao p WHERE p.idp = :idp")
    , @NamedQuery(name = "Publicacao.findByExtensao", query = "SELECT p FROM Publicacao p WHERE p.extensao = :extensao")})
public class Publicacao implements Serializable {

    private static final long serialVersionUID = 1L;
    @Size(max = 2147483647)
    @Column(name = "conteudo")
    private String conteudo;
    
    @Size(max = 2147483647)
    @Column(name = "titulo")
    private String titulo;
    
    @Id
    @Basic(optional = false)
    @NotNull
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "meugerador")
    @SequenceGenerator(name="meugerador", sequenceName = "sq_publicacao")
    @Column(name = "idp")
    private Integer idp;
    
    //@Lob
    @Column(name = "foto")
    private byte[] foto;
    
    @Size(max = 2147483647)
    @Column(name = "extensao")
    private String extensao;
    
    @JoinColumn(name = "id_usuario", referencedColumnName = "id")
    @ManyToOne
    private Usuarioc idUsuario;

    public Publicacao() {
    }

    public Publicacao(Integer idp) {
        this.idp = idp;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Integer getIdp() {
        return idp;
    }

    public void setIdp(Integer idp) {
        this.idp = idp;
    }

    public byte[] getFoto() {
        return foto;
    }
    

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    public String getExtensao() {
        return extensao;
    }

    public void setExtensao(String extensao) {
        this.extensao = extensao;
    }

    public Usuarioc getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Usuarioc idUsuario) {
        this.idUsuario = idUsuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idp != null ? idp.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Publicacao)) {
            return false;
        }
        Publicacao other = (Publicacao) object;
        if ((this.idp == null && other.idp != null) || (this.idp != null && !this.idp.equals(other.idp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Publicacao[ idp=" + idp + " ]";
    }
    
}
