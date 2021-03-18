package pl.walcdroid.registration.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.doctor.entity.DoctorLoginDetails;
import pl.walcdroid.doctor.repository.DoctorLoginDetailsRepository;
import pl.walcdroid.doctor.repository.DoctorRepository;
import pl.walcdroid.registration.dto.RegistrationDTO;

import javax.transaction.Transactional;

@Service
@Transactional
public class RegistrationService {

    @Autowired
    private DoctorRepository doctorRepository;

    @Autowired
    private DoctorLoginDetailsRepository doctorLoginDetailsRepository;


    public void register (RegistrationDTO form) {

        String login = form.getLogin();
        String email = form.getEmail();
        String password = form.getPassword();

        Boolean loginUsed = doctorLoginDetailsRepository.isLoginUsed(login);
        if (loginUsed != null && loginUsed) {
            throw new IllegalArgumentException("Login is already taken");
        }
        Boolean emailUsed = doctorLoginDetailsRepository.isEmailUsed(email);
        if (emailUsed != null && emailUsed) {
            throw new IllegalArgumentException("Email is already taken");
        }

        DoctorLoginDetails doctorLoginDetails = new DoctorLoginDetails();
        doctorLoginDetails.setEmail(email);
        doctorLoginDetails.setLogin(login);
        doctorLoginDetails.setPassword(password);
        doctorLoginDetailsRepository.save(doctorLoginDetails);

        Doctor doctor = new Doctor();
        doctor.setName(form.getName());
        doctor.setSurname(form.getSurname());
        doctor.setDoctorLoginDetails(doctorLoginDetails);
        doctorRepository.save(doctor);

    }



}
