import com.google.inject.AbstractModule;

import controllers.*;

public class Module extends AbstractModule {

    @Override
    protected void configure() {
        bind(BaseAccessApiControllerImpInterface.class).to(BaseAccessApiControllerImp.class);
        bind(BlueOceanApiControllerImpInterface.class).to(BlueOceanApiControllerImp.class);
        bind(RemoteAccessApiControllerImpInterface.class).to(RemoteAccessApiControllerImp.class);
    }
}