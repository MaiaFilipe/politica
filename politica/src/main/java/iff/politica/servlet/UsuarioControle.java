package iff.politica.servlet;

import iff.politica.usuarios.Usuarioc;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import iff.politica.utilidades.HibernateUtil;

public class UsuarioControle {

    //Função de salvar/atualizar um usuario
    public static boolean salvar(Usuarioc usuario){
        try{
            Session sessionRecheio;
            sessionRecheio = HibernateUtil.getSession();
            Transaction tr = sessionRecheio.beginTransaction();
            sessionRecheio.saveOrUpdate(usuario);
            tr.commit();
            return true;
        }
        catch(Exception ex){
            return false;
        }        
    }
    
    //Localiza um usuario pelo id
    public static Usuarioc buscar(Integer id)
    {
        String idUsuarioc = id.toString();
        Session sessionRecheio;
        sessionRecheio = HibernateUtil.getSession();
        Transaction tr = sessionRecheio.beginTransaction();
        String hql = "from Usuarioc u where u.id='"+idUsuarioc+"'";
        Usuarioc usuario = (Usuarioc)sessionRecheio.createQuery(hql).uniqueResult();
        tr.commit();
        return usuario;
    }
    
    //Retorna todos os usuario do sistema
    public static List<Usuarioc> listar()
    {
        Session sessionRecheio;
        sessionRecheio = HibernateUtil.getSession();
        Transaction tr = sessionRecheio.beginTransaction();
        String hql = "from Usuarioc u";
        List<Usuarioc> lista = (List)sessionRecheio.createQuery(hql).list();
        tr.commit();
        return lista;
    }
    
    //Função de apagar um usuario
    public static boolean deletar(Usuarioc usuario){
        try{
            Session sessionRecheio;
            sessionRecheio = HibernateUtil.getSession();
            Transaction tr = sessionRecheio.beginTransaction();
            sessionRecheio.delete(usuario);
            tr.commit();
            return true;
        }
        catch(Exception ex){
            return false;
        }        
    }    
}