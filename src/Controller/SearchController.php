<?php

namespace App\Controller;

use App\Repository\EvenementRepository;
use App\Repository\ServiceeRepository;
use App\Repository\StationRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class SearchController extends AbstractController
{
    /**
     * @Route("/search", name="search")
     */
    public function index(): Response
    {
        return $this->render('search/index.html.twig', [
            'controller_name' => 'SearchController',
        ]);
    }

    /**
     * @param StationRepository $repository
     * @param Request $request
     * @return Response
     * @Route("/recherchest",name="recherchest")
     */

    function RechercheSt(StationRepository  $repository , Request $request)
    {
        $gouv=$request->get('recherche');
        $station=$repository->RechercheGouv($gouv);
        return $this->render('search/searchSt.html.twig' , ['station'=>$station]);
    }

    /**
     * @param ServiceeRepository $repository
     * @param Request $request
     * @return Response
     * @Route("/recherches",name="recherches")
     */

    function RechercheS(ServiceeRepository  $repository , Request $request)
    {
        $nom=$request->get('recherche');
        $service=$repository->RechercheNom($nom);
        return $this->render('search/searchS.html.twig' , ['service'=>$service]);
    }

}
