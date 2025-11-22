package br.com.fiap.skillbridge.controller;

import br.com.fiap.skillbridge.model.Trilha;
import br.com.fiap.skillbridge.repository.TrilhaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/trilhas")
public class TrilhaController {

    @Autowired
    private TrilhaRepository repository;

    // READ (GET /trilhas)
    @GetMapping
    public List<Trilha> listar() {
        return repository.findAll();
    }

    // FAVORITAR (PUT /trilhas/{id}/favorito)
    @PutMapping("/{id}/favorito")
    public ResponseEntity<Trilha> favoritar(@PathVariable Long id) {
        return repository.findById(id)
                .map(trilha -> {
                    trilha.setFavorito(true);
                    repository.save(trilha);
                    return ResponseEntity.ok(trilha);
                })
                .orElse(ResponseEntity.notFound().build());
    }

    // REMOVER FAVORITO (DELETE /trilhas/{id}/favorito)
    @DeleteMapping("/{id}/favorito")
    public ResponseEntity<Void> removerFavorito(@PathVariable Long id) {
        return repository.findById(id)
                .map(trilha -> {
                    trilha.setFavorito(false);
                    repository.save(trilha);
                    return ResponseEntity.noContent().<Void>build();
                })
                .orElse(ResponseEntity.notFound().build());
    }
}