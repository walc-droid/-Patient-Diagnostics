package pl.walcdroid.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.doctor.repository.DoctorRepository;

public class DoctorConverter implements Converter<String, Doctor> {

    @Autowired
    private DoctorRepository doctorRepository;

    @Override
    public Doctor convert (String s) {
        return this.doctorRepository.getOne(Long.parseLong(s));
    }

}
