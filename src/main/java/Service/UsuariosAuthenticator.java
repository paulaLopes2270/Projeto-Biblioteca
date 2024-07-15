package Service;

import DAO.UsuariosDAO;
import Model.Usuarios;
import java.util.ArrayList;
import java.util.List;

public class UsuariosAuthenticator {

    UsuariosDAO UsuariosDAO = new UsuariosDAO();
    List<Usuariossuarios> usuarios = new ArrayList<Usuarios>();

    public Usuarios authenticate(usuarios usuarios) {
        usuarios = UsuariosDAO.findAll();
        if (clients.contains(client)) {
            client = clients.get(clients.indexOf(client));
            return client;
        }
        return null;
    }
}

