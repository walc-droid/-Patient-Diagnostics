package pl.walcdroid.doctor.entity;


import javax.persistence.*;

@Entity
@Table(name = "Doctor_Login_Details")
public class DoctorLoginDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false, unique = true)
    private String email;
    @Column(nullable = false, unique = true)
    private String login;
    @Column(nullable = false, unique = true)
    private String password;


    public Long getId() {
        return id;
    }

    public DoctorLoginDetails setId(Long id) {
        this.id = id;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public DoctorLoginDetails setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getLogin() {
        return login;
    }

    public DoctorLoginDetails setLogin(String login) {
        this.login = login;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public DoctorLoginDetails setPassword(String password) {
        this.password = password;
        return this;
    }
}

