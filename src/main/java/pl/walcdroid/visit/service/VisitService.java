package pl.walcdroid.visit.service;

import org.springframework.stereotype.Service;
import pl.walcdroid.patient.entity.Patient;
import pl.walcdroid.visit.entity.Visit;
import pl.walcdroid.visit.repository.VisitRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class VisitService {

    private final VisitRepository visitRepository;

    public VisitService(VisitRepository visitRepository) {
        this.visitRepository = visitRepository;
    }

    public void save (Visit visit) {
        this.visitRepository.save(visit);
    }

    public void delete (Long id) {
        this.visitRepository.deleteById(id);
    }

    public Visit getById(Long id) {
        return this.visitRepository.getById(id);
    }

    public List<Visit> findAll() {
        return this.visitRepository.findAll();
    }


}
