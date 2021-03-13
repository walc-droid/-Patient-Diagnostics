package pl.walcdroid.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.walcdroid.medicalExamination.entity.MedicalExamination;
import pl.walcdroid.medicalExamination.repository.MedicalExaminationRepository;


public class MedicalExaminationConverter implements Converter<String, MedicalExamination> {

    @Autowired
    private MedicalExaminationRepository medicalExaminationRepository;

    @Override
    public MedicalExamination convert (String s) {
        return this.medicalExaminationRepository.getOne(Long.parseLong(s));
    }


}
