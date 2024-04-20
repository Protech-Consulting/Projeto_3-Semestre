package model;

public class PagamentoBeans {
    private int id_Pagamento;
    private String forma_Pagamento;
    private String cartao;

    public PagamentoBeans() {
        super();
    }

    public PagamentoBeans(int id_Pagamento, String forma_Pagamento, String cartao) {
        super();
        this.id_Pagamento = id_Pagamento;
        this.forma_Pagamento = forma_Pagamento;
        this.cartao = cartao;
    }

    public int getId_Pagamento() {
        return id_Pagamento;
    }

    public void setId_Pagamento(int id_Pagamento) {
        this.id_Pagamento = id_Pagamento;
    }

    public String getForma_Pagamento() {
        return forma_Pagamento;
    }

    public void setForma_Pagamento(String forma_Pagamento) {
        this.forma_Pagamento = forma_Pagamento;
    }

    public String getCartao() {
        return cartao;
    }

    public void setCartao(String cartao) {
        this.cartao = cartao;
    }
}