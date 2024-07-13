package Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

@Table(name="livros")
public class Livros {
    @Id
    @Column(name = "isbn", nullable = false, length = 13)
    private String isbn;

    @Column(name = "nome", nullable = false, length = 50)
    private String nome;

    @Column(name = "categoria", length = 50)
    private String categoria;

    @Column(name = "quantidade", nullable = false)
    private int quantidade;

    @ManyToOne
    @JoinColumn(name = "usuario_id")
    private Usuarios usuario;

    @Override
    public String toString() {
        return "Livros{" +
                "isbn='" + isbn + '\'' +
                ", nome='" + nome + '\'' +
                ", categoria='" + categoria + '\'' +
                ", quantidade=" + quantidade +
                ", usuario=" + usuario +
                '}';
    }
}
