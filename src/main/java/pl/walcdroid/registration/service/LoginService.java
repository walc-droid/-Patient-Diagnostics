package pl.walcdroid.registration.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.walcdroid.doctor.dto.DoctorDTO;
import pl.walcdroid.doctor.entity.DoctorLoginDetails;
import pl.walcdroid.doctor.repository.DoctorLoginDetailsRepository;


import javax.transaction.Transactional;

@Service
@Transactional
public class LoginService {

    @Autowired
    private DoctorLoginDetailsRepository doctorLoginDetailsRepository;

    public boolean validate(String login, String password) {
        Boolean check = doctorLoginDetailsRepository.checkLogin(login, password);
        return check != null ? check : false;
    }

    public DoctorDTO login(String login) {
        DoctorLoginDetails doctorLoginDetails = this.doctorLoginDetailsRepository.findByLogin(login);
        DoctorDTO doctorDTO = new DoctorDTO();
        doctorDTO.setLogin(doctorLoginDetails.getLogin());
        doctorDTO.setId(doctorLoginDetails.getId());
        return doctorDTO;
    }



}
