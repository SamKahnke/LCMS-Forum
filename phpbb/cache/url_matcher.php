<?php

use Symfony\Component\Routing\Exception\MethodNotAllowedException;
use Symfony\Component\Routing\Exception\ResourceNotFoundException;
use Symfony\Component\Routing\RequestContext;

/**
 * phpbb_url_matcher.
 *
 * This class has been auto-generated
 * by the Symfony Routing Component.
 */
class phpbb_url_matcher extends Symfony\Component\Routing\Matcher\UrlMatcher
{
    /**
     * Constructor.
     */
    public function __construct(RequestContext $context)
    {
        $this->context = $context;
    }

    public function match($pathinfo)
    {
        $allow = array();
        $pathinfo = rawurldecode($pathinfo);

        if (0 === strpos($pathinfo, '/restApiV1')) {
            if (0 === strpos($pathinfo, '/restApiV1/log')) {
                // eparsons_restapi_auth_login
                if ($pathinfo === '/restApiV1/login') {
                    return array (  '_controller' => 'eparsons.restapi.controller.auth:login',  '_route' => 'eparsons_restapi_auth_login',);
                }

                // eparsons_restapi_auth_logout
                if ($pathinfo === '/restApiV1/logout') {
                    return array (  '_controller' => 'eparsons.restapi.controller.auth:logout',  '_route' => 'eparsons_restapi_auth_logout',);
                }

            }

            if (0 === strpos($pathinfo, '/restApiV1/users')) {
                // eparsons_restapi_users_whoAmI
                if ($pathinfo === '/restApiV1/users/me') {
                    return array (  '_controller' => 'eparsons.restapi.controller.users:whoAmI',  '_route' => 'eparsons_restapi_users_whoAmI',);
                }

                // eparsons_restapi_users_user
                if (preg_match('#^/restApiV1/users(?:/(?P<userId>\\d+))?$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'eparsons_restapi_users_user')), array (  '_controller' => 'eparsons.restapi.controller.users:user',  'userId' => -1,));
                }

            }

        }

        // phpbb_skeleton_controller
        if ($pathinfo === '/skeleton') {
            return array (  '_controller' => 'phpbb.skeleton.controller:handle',  '_route' => 'phpbb_skeleton_controller',);
        }

        throw 0 < count($allow) ? new MethodNotAllowedException(array_unique($allow)) : new ResourceNotFoundException();
    }
}
