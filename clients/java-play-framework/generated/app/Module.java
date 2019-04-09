import com.google.inject.AbstractModule;

import controllers.*;

public class Module extends AbstractModule {

    @Override
    protected void configure() {
        bind(BaseRemoteAccessApiControllerImpInterface.class).to(BaseRemoteAccessApiControllerImp.class);
        bind(BlueOceanApiControllerImpInterface.class).to(BlueOceanApiControllerImp.class);
        bind(RemoteAccessApiControllerImpInterface.class).to(RemoteAccessApiControllerImp.class);
    }
}