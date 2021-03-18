package pl.walcdroid.registration.dto;
import java.util.Objects;

public class RegistrationDTO {

    private String login;

    private String email;

    private String password;

    private String confirmedPassword;

    private String name;

    private String surname;

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmedPassword() {
        return confirmedPassword;
    }

    public void setConfirmedPassword(String confirmedPassword) {
        this.confirmedPassword = confirmedPassword;
    }

    public String getName() {
        return name;
    }

    public RegistrationDTO setName(String name) {
        this.name = name;
        return this;
    }

    public String getSurname() {
        return surname;
    }

    public RegistrationDTO setSurname(String surname) {
        this.surname = surname;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RegistrationDTO that = (RegistrationDTO) o;
        return Objects.equals(login, that.login) &&
                Objects.equals(email, that.email) &&
                Objects.equals(password, that.password) &&
                Objects.equals(confirmedPassword, that.confirmedPassword) &&
                Objects.equals(name, that.name) &&
                Objects.equals(surname, that.surname);
    }

    @Override
    public int hashCode() {
        return Objects.hash(login, email, password, confirmedPassword, name, surname);
    }

    @Override
    public String toString() {
        return "RegistrationFormDTO{" +
                "login='" + login + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", confirmedPassword='" + confirmedPassword + '\'' +
                ", firstName='" + name + '\'' +
                ", lastName='" + surname + '\'' +
                '}';
    }


}
