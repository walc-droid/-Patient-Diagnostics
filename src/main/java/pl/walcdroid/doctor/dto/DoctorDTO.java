package pl.walcdroid.doctor.dto;

import java.util.Objects;

public class DoctorDTO {

    private Long id;
    private String login;


    public Long getId() {
        return id;
    }

    public DoctorDTO setId(Long id) {
        this.id = id;
        return this;
    }

    public String getLogin() {
        return login;
    }

    public DoctorDTO setLogin(String login) {
        this.login = login;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DoctorDTO doctorDTO = (DoctorDTO) o;
        return Objects.equals(id, doctorDTO.id) &&
                Objects.equals(login, doctorDTO.login);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, login);
    }

    @Override
    public String toString() {
        return "DoctorDTO{" +
                "id=" + id +
                ", login='" + login + '\'' +
                '}';
    }
}
