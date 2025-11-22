package br.com.fiap.skillbridge.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "TB_SKILLBRIDGE_SKILL")
public class Skill {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_skill")
    private Long id;

    @Column(name = "nm_skill")
    private String nome;

    @Column(name = "ds_nivel")
    private String nivel;
}