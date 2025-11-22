package br.com.fiap.skillbridge.repository;

import br.com.fiap.skillbridge.model.Questao;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface QuestaoRepository extends JpaRepository<Questao, Long> {
    List<Questao> findByTrilhaId(Long trilhaId);
}