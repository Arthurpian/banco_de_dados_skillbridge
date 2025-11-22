package br.com.fiap.skillbridge.controller;

import br.com.fiap.skillbridge.model.Certificado;
import br.com.fiap.skillbridge.model.Questao;
import br.com.fiap.skillbridge.repository.CertificadoRepository;
import br.com.fiap.skillbridge.repository.QuestaoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/quiz")
public class QuizController {

    @Autowired
    private QuestaoRepository questaoRepository;

    @Autowired
    private CertificadoRepository certificadoRepository;

    // Busca as questões de uma trilha específica
    @GetMapping("/questoes/{trilhaId}")
    public List<Questao> listarQuestoes(@PathVariable Long trilhaId) {
        return questaoRepository.findByTrilhaId(trilhaId);
    }

    // Salva um certificado (Chamado quando acerta as 3)
    @PostMapping("/certificado")
    public Certificado gerarCertificado(@RequestBody Certificado certificado) {
        certificado.setDataConclusao(LocalDate.now());
        return certificadoRepository.save(certificado);
    }

    // Lista certificados para o perfil
    @GetMapping("/certificados")
    public List<Certificado> listarCertificados() {
        return certificadoRepository.findAll();
    }
}