<?php

namespace App\Controller;

use App\Entity\Servicee;
use App\Entity\Station;
use App\Entity\Gouvernerat;
use App\Form\GouverneratType;
use App\Form\ServiceeType;
use App\Form\StationType;
use App\Repository\GouverneratRepository;
use App\Repository\ServiceeRepository;
use App\Repository\StationRepository;
use App\Repository\UserRepository;
use Cassandra\Type\UserType;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/home", name="home")
     */
    public function index(): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }

    /**
     * @Route("/map", name="map")
     */
    public function map(): Response
    {
        return $this->render('home/map.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }

    /**
     * @Route("/acceuil", name="acceuil")
     */
    public function acceuil(): Response
    {
        return $this->render('home/acceuil.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }

    /**
     * @Route("/profil", name="profil")
     */
    public function profil(): Response
    {
        return $this->render('home/profil.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }




    /**
     * @Route("/affichest", name="affichest")
     */
    public function afficheSt(StationRepository $repository,  Request $request , PaginatorInterface $paginator )
    {
        $station=$repository->findAll();

        $station=$repository->OrderByGouv();


        $station = $paginator->paginate(

            $station,//on passe les donnees
            $request->query->getInt('page',1),
            8

        );

        return $this->render('station/affiche.html.twig', ['station' => $station,]);
    }

    /**
     * @Route("/affiches", name="affiches")
     */
    public function afficheS(ServiceeRepository $repository ,  Request $request , PaginatorInterface $paginator)
    {
        $service=$repository->findAll();

        $service=$repository->OrderByNom();


        $service = $paginator->paginate(

            $service,//on passe les donnees
            $request->query->getInt('page',1),
            8

        );
        return $this->render('service/affiche.html.twig', ['service' => $service,]);
    }





    /**
     * @Route("/ajoutst",name="ajoutst")
     */

    public function ajoutSt(Request $request)
    {
        $station= new Station();
        $form=$this->createForm(StationType::class,$station);
        $form= $form->handleRequest($request);
        if($form->isSubmitted() and $form->isValid()){
            $em=$this->getDoctrine()->getManager();
            $em->persist($station);
            $em->flush();
            return $this->redirectToRoute('affichest');
        }


        return $this->render('station/ajout.html.twig',['form'=>$form->createView()]);
    }

    /**
     * @Route("/ajouts",name="ajouts")
     */

    public function ajoutS(Request $request)
    {
        $service= new Servicee();
        $form=$this->createForm(ServiceeType::class,$service);
        $form= $form->handleRequest($request);
        if($form->isSubmitted() and $form->isValid()){
            $em=$this->getDoctrine()->getManager();
            $em->persist($service);
            $em->flush();
            return $this->redirectToRoute('affiches');
        }
        return $this->render('service/ajout.html.twig',['form'=>$form->createView()]);
    }

    /**
     * @param $id
     * @param StationRepository $repository
     * @return \Symfony\Component\HttpFoundation\RedirectResponse
     * @Route("/supprimest/{id}" , name="supprimest")
     */

    function supprimerSt($id , StationRepository $repository){
        $station=$repository->find($id);
        $em=$this->getDoctrine()->getManager();
        $em->remove($station);
        $em->flush();
        return $this->redirectToRoute('affichest');
    }

    /**
     * @param $id
     * @param ServiceeRepository $repository
     * @return \Symfony\Component\HttpFoundation\RedirectResponse
     * @Route("/supprimes/{id}" , name="supprimes")
     */

    function supprimerS($id , ServiceeRepository $repository){
        $service=$repository->find($id);
        $em=$this->getDoctrine()->getManager();
        $em->remove($service);
        $em->flush();
        return $this->redirectToRoute('affiches');
    }

    /**
     * @param StationRepository $repository
     * @param $id
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     * @Route("/modifiest/{id}" , name="modifiest")
     */

    function modifierSt( StationRepository $repository ,$id , Request $request)

    {

        $station=$repository->find($id);
        $form=$this->createForm(StationType::class,$station);
        $form->add('Modifier',SubmitType::class);
        $form->handleRequest($request);
        if ( $form->isSubmitted() && $form->isValid())
        {
            $em=$this->getDoctrine()->getManager();
            $em->flush();
            return $this->redirectToRoute('affichest');
        }

        return $this->render('station/modifie.html.twig' , ['form'=>$form->createView()] );

    }


    /**
     * @param ServiceeRepository $repository
     * @param $id
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     * @Route("/modifies/{id}" , name="modifies")
     */

    function modifierS(ServiceeRepository $repository ,$id , Request $request)

    {

        $service=$repository->find($id);
        $form=$this->createForm(ServiceeType::class,$service);
        $form->add('Modifier',SubmitType::class);
        $form->handleRequest($request);
        if ( $form->isSubmitted() && $form->isValid())
        {
            $em=$this->getDoctrine()->getManager();
            $em->flush();
            return $this->redirectToRoute('affiches');
        }

        return $this->render('service/modifie.html.twig' , ['form'=>$form->createView()] );

    }

    /**
     * @Route("/afficheg", name="afficheg")
     */
    public function afficheGouver(GouverneratRepository $repository,  Request $request , PaginatorInterface $paginator )
    {
        $gouvernerat=$repository->findAll();

        $gouvernerat=$repository->OrderByN();




        $gouvernerat = $paginator->paginate(

            $gouvernerat,//on passe les donnees
            $request->query->getInt('page',1),
            8

        );

        return $this->render('gouvernerat/affiche.html.twig', ['gouvernerat' => $gouvernerat,]);
    }

    /**
     * @Route("/ajoutg",name="ajoutg")
     */

    public function ajoutGouve(Request $request)
    {
        $gouvernerat= new Gouvernerat();
        $form=$this->createForm(GouverneratType::class,$gouvernerat);
        $form= $form->handleRequest($request);
        if($form->isSubmitted() and $form->isValid()){
            $em=$this->getDoctrine()->getManager();
            $em->persist($gouvernerat);
            $em->flush();
            return $this->redirectToRoute('afficheg');
        }
        return $this->render('gouvernerat/ajout.html.twig',['form'=>$form->createView()]);
    }
    /**
     * @param GouverneratRepository $repository
     * @param $id
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     * @Route("/modifieg/{id}" , name="modifieg")
     */

    function modifierGouve(GouverneratRepository $repository ,$id , Request $request)

    {

        $gouvernerat=$repository->find($id);
        $form=$this->createForm(GouverneratType::class,$gouvernerat);
        $form->add('Modifier',SubmitType::class);
        $form->handleRequest($request);
        if ( $form->isSubmitted() && $form->isValid())
        {
            $em=$this->getDoctrine()->getManager();
            $em->flush();
            return $this->redirectToRoute('afficheg');
        }

        return $this->render('gouvernerat/modifie.html.twig' , ['form'=>$form->createView()] );

    }

    /**
     * @param $id
     * @param GouverneratRepository $repository
     * @return \Symfony\Component\HttpFoundation\RedirectResponse
     * @Route("/supprimeg/{id}" , name="supprimeg")
     */

    function supprimerGouve($id , GouverneratRepository $repository){
        $gouvernerat=$repository->find($id);
        $em=$this->getDoctrine()->getManager();
        $em->remove($gouvernerat);
        $em->flush();
        return $this->redirectToRoute('afficheg');
    }

    /**
     * @param UserRepository $repository
     * @param $id
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     * @Route("/modifieu/{id}" , name="modifieu")
     */

    function modifierUser(UserRepository $repository ,$id , Request $request, \Swift_Mailer $mailer)

    {

        $user=$repository->find($id);
        $form=$this->createForm(\App\Form\UserType::class,$user);
        $form->add('Modifier',SubmitType::class);
        $form->handleRequest($request);
        if ( $form->isSubmitted() && $form->isValid())
        {
            $user= $form->getData();

            $message = (new \Swift_Message('Modification du profil'))
                ->setFrom('agilgeolocalisation@gmail.com')
                ->setTo($user->getEmail())
                ->setBody(
                    $this->renderView(
                    // templates/emails/registration.html.twig
                        'home/email_modif.html.twig',
                        compact('user')
                    ),
                    'text/html'
                )
            ;
            $mailer->send($message);

            $em=$this->getDoctrine()->getManager();
            $em->flush();
            return $this->redirectToRoute('profil');
        }

        return $this->render('home/modifie_profil.html.twig' , ['form'=>$form->createView()] );

    }




}
