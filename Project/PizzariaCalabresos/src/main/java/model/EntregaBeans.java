package model;

public class EntregaBeans {
    private int id_Entrega;
    private int id_Pedido_Cliente;
    private int id_Usuario;

    public EntregaBeans() {
        super();
    }

    public EntregaBeans(int id_Entrega, int id_Pedido_Cliente, int id_Usuario) {
        super();
        this.id_Entrega = id_Entrega;
        this.id_Pedido_Cliente = id_Pedido_Cliente;
        this.id_Usuario = id_Usuario;
    }

    public int getId_Entrega() {
        return id_Entrega;
    }

    public void setId_Entrega(int id_Entrega) {
        this.id_Entrega = id_Entrega;
    }

    public int getId_Pedido_Cliente() {
        return id_Pedido_Cliente;
    }

    public void setId_Pedido_Cliente(int id_Pedido_Cliente) {
        this.id_Pedido_Cliente = id_Pedido_Cliente;
    }

    public int getId_Usuario() {
        return id_Usuario;
    }

    public void setId_Usuario(int id_Usuario) {
        this.id_Usuario = id_Usuario;
    }
}