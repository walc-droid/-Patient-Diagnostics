package pl.walcdroid.patient.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.walcdroid.patient.entity.Patient;


@Repository
public interface PatientRepository extends JpaRepository<Patient,Long> {

    Patient getById (Long id);
}
