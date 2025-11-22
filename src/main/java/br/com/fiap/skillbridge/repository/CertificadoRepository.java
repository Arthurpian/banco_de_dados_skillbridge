package br.com.fiap.skillbridge.repository;

import br.com.fiap.skillbridge.model.Certificado;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CertificadoRepository extends JpaRepository<Certificado, Long> {
}