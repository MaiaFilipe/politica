/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iff.politica.usuarios;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@Table(name = "usuarioc")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Usuarioc.findAll", query = "SELECT u FROM Usuarioc u")
    , @NamedQuery(name = "Usuarioc.findByCpfc", query = "SELECT u FROM Usuarioc u WHERE u.cpfc = :cpfc")
    , @NamedQuery(name = "Usuarioc.findByCellc", query = "SELECT u FROM Usuarioc u WHERE u.cellc = :cellc")
    , @NamedQuery(name = "Usuarioc.findBySenhac", query = "SELECT u FROM Usuarioc u WHERE u.senhac = :senhac")
    , @NamedQuery(name = "Usuarioc.findByPosicaoc", query = "SELECT u FROM Usuarioc u WHERE u.posicaoc = :posicaoc")
    , @NamedQuery(name = "Usuarioc.findByEmailc", query = "SELECT u FROM Usuarioc u WHERE u.emailc = :emailc")
    , @NamedQuery(name = "Usuarioc.findByDescricaoc", query = "SELECT u FROM Usuarioc u WHERE u.descricaoc = :descricaoc")
    , @NamedQuery(name = "Usuarioc.findByNomec", query = "SELECT u FROM Usuarioc u WHERE u.nomec = :nomec")
    , @NamedQuery(name = "Usuarioc.findByNascimentoc", query = "SELECT u FROM Usuarioc u WHERE u.nascimentoc = :nascimentoc")
    , @NamedQuery(name = "Usuarioc.findByEstadoc", query = "SELECT u FROM Usuarioc u WHERE u.estadoc = :estadoc")
    , @NamedQuery(name = "Usuarioc.findById", query = "SELECT u FROM Usuarioc u WHERE u.id = :id")})
public class Usuarioc implements Serializable {

    private static final long serialVersionUID = 1L;
    @Column(name = "cpfc")
    private Integer cpfc;
    
    @Column(name = "cellc")
    private Integer cellc;
    
    @Size(max = 2147483647)
    @Column(name = "senhac")
    private String senhac;
    
    @Size(max = 2147483647)
    @Column(name = "posicaoc")
    private String posicaoc;
    
    @Size(max = 2147483647)
    @Column(name = "emailc")
    private String emailc;
    
    @Size(max = 2147483647)
    @Column(name = "descricaoc")
    private String descricaoc;
    
    @Size(max = 2147483647)
    @Column(name = "nomec")
    private String nomec;
    
    @Size(max = 2147483647)
    @Column(name = "nascimentoc")
    private String nascimentoc;
    
    @Size(max = 2147483647)
    @Column(name = "estadoc")
    private String estadoc;
    
    @Id
    @Basic(optional = false)
    @NotNull
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "meugerador")
    @SequenceGenerator(name="meugerador", sequenceName = "sq_usuario")
    @Column(name = "id")
    private Integer id;

    public Usuarioc() {
    }

    public Usuarioc(Integer id) {
        this.id = id;
    }

    public Integer getCpfc() {
        return cpfc;
    }

    public void setCpfc(Integer cpfc) {
        this.cpfc = cpfc;
    }

    public Integer getCellc() {
        return cellc;
    }

    public void setCellc(Integer cellc) {
        this.cellc = cellc;
    }

    public String getSenhac() {
        return senhac;
    }

    public void setSenhac(String senhac) {
        this.senhac = senhac;
    }

    public String getPosicaoc() {
        return posicaoc;
    }

    public void setPosicaoc(String posicaoc) {
        this.posicaoc = posicaoc;
    }

    public String getEmailc() {
        return emailc;
    }

    public void setEmailc(String emailc) {
        this.emailc = emailc;
    }

    public String getDescricaoc() {
        return descricaoc;
    }

    public void setDescricaoc(String descricaoc) {
        this.descricaoc = descricaoc;
    }

    public String getNomec() {
        return nomec;
    }

    public void setNomec(String nomec) {
        this.nomec = nomec;
    }

    public String getNascimentoc() {
        return nascimentoc;
    }

    public void setNascimentoc(String nascimentoc) {
        this.nascimentoc = nascimentoc;
    }

    public String getEstadoc() {
        return estadoc;
    }

    public void setEstadoc(String estadoc) {
        this.estadoc = estadoc;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
        if (!(object instanceof Usuarioc)) {
            return false;
        }
        Usuarioc other = (Usuarioc) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "iff.politica.usuarios.Usuarioc[ id=" + id + " ]";
    }
    
}