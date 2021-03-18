package pl.walcdroid.doctor.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.doctor.entity.DoctorLoginDetails;

@Repository
public interface DoctorLoginDetailsRepository extends JpaRepository<DoctorLoginDetails,Long> {

    @Query("SELECT true FROM DoctorLoginDetails d WHERE d.login = :login")
    Boolean isLoginUsed(@Param("login") String login);

    @Query("SELECT true FROM DoctorLoginDetails d WHERE d.email = :email")
    Boolean isEmailUsed(@Param("email") String email);

    @Query("SELECT CASE WHEN count(d.id) > 0 THEN true ELSE false END " +
            "FROM DoctorLoginDetails d WHERE d.login = :login AND d.password = :password")
    Boolean checkLogin(@Param("login") String login, @Param("password") String password);


    DoctorLoginDetails findByLogin(String login);

}
