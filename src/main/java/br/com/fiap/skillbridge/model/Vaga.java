package br.com.fiap.skillbridge.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "TB_SKILLBRIDGE_VAGA")
public class Vaga {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titulo;
    private String empresa;
    private String nivel; // Ex: Júnior, Pleno
    private String localizacao; // Ex: Remoto, São Paulo

    // Vamos salvar assim: "Java,React Native,Inglês"
    // Isso facilita muito a comparação no Front
    private String requisitos;
}