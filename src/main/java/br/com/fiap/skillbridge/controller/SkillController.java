package br.com.fiap.skillbridge.controller;

import br.com.fiap.skillbridge.model.Skill;
import br.com.fiap.skillbridge.repository.SkillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/skills")
public class SkillController {

    @Autowired
    private SkillRepository repository;

    // READ (GET /skills)
    @GetMapping
    public List<Skill> listar() {
        return repository.findAll();
    }

    // CREATE (POST /skills)
    @PostMapping
    public Skill criar(@RequestBody Skill skill) {
        return repository.save(skill);
    }

    // UPDATE (PUT /skills/{id})
    @PutMapping("/{id}")
    public Skill atualizar(@PathVariable Long id, @RequestBody Skill skillAtualizada) {
        Skill skill = repository.findById(id).orElseThrow();
        skill.setNome(skillAtualizada.getNome());
        skill.setNivel(skillAtualizada.getNivel());
        return repository.save(skill);
    }

    // DELETE (DELETE /skills/{id})
    @DeleteMapping("/{id}")
    public void deletar(@PathVariable Long id) {
        repository.deleteById(id);
    }
}