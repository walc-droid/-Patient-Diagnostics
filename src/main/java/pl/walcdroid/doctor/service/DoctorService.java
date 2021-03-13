package pl.walcdroid.doctor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.doctor.repository.DoctorRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class DoctorService {

    private final DoctorRepository doctorRepository;

    public DoctorService (DoctorRepository doctorRepository) {
        this.doctorRepository = doctorRepository;
    }

    public void saveDoctor (Doctor doctor) {
        this.doctorRepository.save(doctor);
    }

    public void deleteDoctor (Long id) {
        this.doctorRepository.deleteById(id);
    }

    public Doctor getById(Long id) {
        return this.doctorRepository.getById(id);
    }

    public List<Doctor> findAll() {
        return this.doctorRepository.findAll();
    }



}
