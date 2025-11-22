package br.com.fiap.skillbridge.repository;

import br.com.fiap.skillbridge.model.Trilha;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TrilhaRepository extends JpaRepository<Trilha, Long> {
}