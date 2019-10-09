/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import entidades.*;
import util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author aluno
 */
public class PublicacaoControle {

    //Função de salvar/atualizar um publicacao
    public static boolean salvar(Publicacao publicacao) {
        try {
            Session sessionRecheio;
            sessionRecheio = HibernateUtil.getSession();
            Transaction tr = sessionRecheio.beginTransaction();
            sessionRecheio.saveOrUpdate(publicacao);
            tr.commit();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

}
