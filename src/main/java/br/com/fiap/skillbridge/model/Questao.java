package br.com.fiap.skillbridge.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "TB_SKILLBRIDGE_QUESTAO")
public class Questao {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long trilhaId; // Link com a trilha
    private String enunciado;
    private String opcaoA;
    private String opcaoB;
    private String opcaoC;
    private String respostaCorreta; // 'A', 'B' ou 'C'
}