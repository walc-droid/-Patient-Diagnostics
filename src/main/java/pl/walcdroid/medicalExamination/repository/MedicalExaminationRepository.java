package pl.walcdroid.medicalExamination.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.walcdroid.medicalExamination.entity.MedicalExamination;


@Repository
public interface MedicalExaminationRepository extends JpaRepository<MedicalExamination,Long> {

    MedicalExamination getById (Long id);

}
