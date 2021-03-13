package pl.walcdroid.visit.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.walcdroid.visit.entity.Visit;

@Repository
public interface VisitRepository extends JpaRepository<Visit,Long> {

    Visit getById (Long id);
}
