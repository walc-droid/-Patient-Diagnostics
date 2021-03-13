package pl.walcdroid.doctor.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.walcdroid.doctor.entity.Doctor;


@Repository
public interface DoctorRepository extends JpaRepository<Doctor,Long> {

    Doctor getById (Long id);

}