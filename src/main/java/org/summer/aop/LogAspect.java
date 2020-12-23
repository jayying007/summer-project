package org.summer.aop;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.summer.framework.annotation.Aspect;
import org.summer.framework.annotation.Controller;
import org.summer.framework.proxy.AspectProxy;

import java.lang.reflect.Method;

/**
 * @author ZhuangJieYing
 * @date 2020/12/22
 */
@Aspect(value = Controller.class)
public class LogAspect extends AspectProxy {
    private static final Logger logger = LoggerFactory.getLogger(LogAspect.class);

    @Override
    public void before(Class<?> clz, Method method, Object[] params) throws Throwable {
        for(Method m : clz.getDeclaredMethods()) {
            if(m.getName().equals(method.getName())) {
                logger.debug("LogAspect before");
            }
        }
    }

    @Override
    public void after(Class<?> clz, Method method, Object[] params) throws Throwable {
        for(Method m : clz.getDeclaredMethods()) {
            if(m.getName().equals(method.getName())) {
                logger.debug("LogAspect after");
            }
        }
    }
}
