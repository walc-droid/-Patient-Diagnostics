package pl.walcdroid.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.format.FormatterRegistry;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.LocaleContextResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import pl.walcdroid.converter.DoctorConverter;
import pl.walcdroid.converter.MedicalExaminationConverter;
import pl.walcdroid.converter.VisitConverter;

import javax.persistence.EntityManagerFactory;
import javax.validation.Validator;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;


@Configuration
@ComponentScan(basePackages = {"pl.walcdroid"})
@EnableWebMvc
@EnableTransactionManagement
@EnableJpaRepositories(basePackages = "pl.walcdroid")
public class AppConfig implements WebMvcConfigurer {
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver =
                new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }


    @Bean
    public LocalEntityManagerFactoryBean entityManagerFactory() {
        LocalEntityManagerFactoryBean entityManagerFactoryBean
                = new LocalEntityManagerFactoryBean();
        entityManagerFactoryBean.setPersistenceUnitName("patientdiagnostics");

        return entityManagerFactoryBean;
    }

    @Bean
    public JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) {
        JpaTransactionManager jpaTransactionManager =
                new JpaTransactionManager(entityManagerFactory);

        return jpaTransactionManager;
    }


    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        StringHttpMessageConverter stringConverter = new StringHttpMessageConverter();
        stringConverter.setSupportedMediaTypes(Arrays.asList(new MediaType("text", "html",
                Charset.forName("UTF-8"))));
        converters.add(stringConverter);
    }

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(getMedicalExaminationConverter());
        registry.addConverter(getDoctorConverter());
        registry.addConverter(getVisitConverter());
    }


    @Bean
    public DoctorConverter getDoctorConverter() {
        return new DoctorConverter();
    }


    @Bean
    public MedicalExaminationConverter getMedicalExaminationConverter() {
        return new MedicalExaminationConverter();
    }


    @Bean
    public VisitConverter getVisitConverter() {
        return new VisitConverter();
    }

    @Bean
    public Validator validator() {
        return new LocalValidatorFactoryBean();
    }


    @Bean(name="localeResolver")
    public LocaleContextResolver getLocaleContextResolver() {
        SessionLocaleResolver localeResolver = new SessionLocaleResolver();
        localeResolver.setDefaultLocale(new Locale("pl","PL"));
        return localeResolver;
    }

}