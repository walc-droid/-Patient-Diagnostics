package pl.walcdroid.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.walcdroid.visit.entity.Visit;
import pl.walcdroid.visit.repository.VisitRepository;

public class VisitConverter implements Converter<String, Visit> {

    @Autowired
    private VisitRepository visitRepository;

    @Override
    public Visit convert (String s) {
        return this.visitRepository.getOne(Long.parseLong(s));
    }


}
