<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/home", name="home")
     */
    public function index()
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }

    public function soSlowFragment()
    {
        $response = $this->render('home/slow.html.twig', [
            'timestamp' => time()
        ]);

        $response->setSharedMaxAge(600);
        $response->setPublic();
        return $response;
    }
}
