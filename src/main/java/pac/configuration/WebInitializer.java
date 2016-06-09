package pac.configuration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

//import java.util.logging.Filter;

public class WebInitializer implements WebApplicationInitializer{

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
        ctx.register(AppConfig.class);
        ctx.register(SecurityConfig.class);
        servletContext.addListener(new ContextLoaderListener(ctx));

        ctx.setServletContext(servletContext);
//        ctx.refresh();

        ServletRegistration.Dynamic servlet = servletContext.addServlet("dispatcher", new DispatcherServlet(ctx));
        servlet.addMapping("/");
        servlet.setLoadOnStartup(1);
    }
//    @Override
//
//    protected Filter[] getServletFilters() {
//
//        // if encoding has issues we need to add UTF-8 encoding filter
//
//        CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
//
//        encodingFilter.setForceEncoding(true);
//
//        encodingFilter.setEncoding("UTF-8");
//
//        // encoding filter must be the first one
//
//        return new Filter[]{encodingFilter,
//
//                new DelegatingFilterProxy("springSecurityFilterChain"),
//
//                new OpenEntityManagerInViewFilter()};
//
//    }
}
