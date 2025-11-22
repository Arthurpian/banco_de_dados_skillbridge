package br.com.fiap.skillbridge.repository;

import br.com.fiap.skillbridge.model.Skill;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SkillRepository extends JpaRepository<Skill, Long> {
}