package pl.walcdroid.patient.service;

import org.springframework.stereotype.Service;
import pl.walcdroid.medicalExamination.entity.MedicalExamination;
import pl.walcdroid.patient.entity.Patient;
import pl.walcdroid.patient.repository.PatientRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class PatientService {

    private final PatientRepository patientRepository;

    public PatientService(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    public void save (Patient patient) {
        this.patientRepository.save(patient);
    }

    public void delete (Long id) {
        this.patientRepository.deleteById(id);
    }

    public Patient getById(Long id) {
        return this.patientRepository.getById(id);
    }

    public List<Patient> findAll() {
        return this.patientRepository.findAll();
    }



}
