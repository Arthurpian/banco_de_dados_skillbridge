package br.com.fiap.skillbridge.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "TB_SKILLBRIDGE_TRILHA")
public class Trilha {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_trilha")
    private Long id;

    @Column(name = "tx_titulo")
    private String titulo;

    @Column(name = "tx_descricao")
    private String descricao;

    @Column(name = "nm_autor")
    private String autor;

    @Column(name = "st_favorito")
    @Convert(converter = org.hibernate.type.YesNoConverter.class)
    private Boolean favorito;

    // NOVO CAMPO: O Texto da aula
    @Column(name = "tx_conteudo", length = 4000)
    private String conteudo;
}