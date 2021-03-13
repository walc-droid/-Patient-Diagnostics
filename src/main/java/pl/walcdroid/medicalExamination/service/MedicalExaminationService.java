package pl.walcdroid.medicalExamination.service;

import org.springframework.stereotype.Service;
import pl.walcdroid.medicalExamination.entity.MedicalExamination;
import pl.walcdroid.medicalExamination.repository.MedicalExaminationRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class MedicalExaminationService {

    private final MedicalExaminationRepository medicalExaminationRepository;

    public MedicalExaminationService(MedicalExaminationRepository medicalExaminationRepository) {
        this.medicalExaminationRepository = medicalExaminationRepository;
    }

    public void save (MedicalExamination medicalExamination) {
        this.medicalExaminationRepository.save(medicalExamination);
    }

    public void delete (Long id) {
        this.medicalExaminationRepository.deleteById(id);
    }

    public MedicalExamination getById(Long id) {
        return this.medicalExaminationRepository.getById(id);
    }

    public List<MedicalExamination> findAll() {
        return this.medicalExaminationRepository.findAll();
    }


}
