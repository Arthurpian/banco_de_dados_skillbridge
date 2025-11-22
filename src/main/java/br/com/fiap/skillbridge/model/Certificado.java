package br.com.fiap.skillbridge.model;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDate;

@Data
@Entity
@Table(name = "TB_SKILLBRIDGE_CERTIFICADO")
public class Certificado {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String tituloTrilha;
    private LocalDate dataConclusao;
}