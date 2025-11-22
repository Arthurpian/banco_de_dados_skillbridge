package br.com.fiap.skillbridge.repository;

import br.com.fiap.skillbridge.model.Vaga;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VagaRepository extends JpaRepository<Vaga, Long> {
}