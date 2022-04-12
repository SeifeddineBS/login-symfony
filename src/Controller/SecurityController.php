<?php

namespace App\Controller;

use App\Entity\User;
use http\Env\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class  SecurityController extends AbstractController
{


    private $user;

    /**
     * @Route("/" , name="connexion")
     */

    public function connexion ( AuthenticationUtils $utils){
        $this->user = new User();
        $error=$utils->getLastAuthenticationError();
        $last_id=$utils->getLastUsername();
        return $this->render('security/login2.html.twig',[
            'error'=> $error,
            'last_id'=> $last_id,
            'controller_name'=>'SecurityController'
        ]);

    }

    /**
     * @Route("/deconnexion" , name="deconnexion")
     */

    public function deconnexion (){


    }

    /**
     * @Route("/code", name="code")
     */
    public function code(): Response
    {
        return $this->render('home/code.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }

}
