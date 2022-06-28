<?php

namespace App\Controller;

use App\Repository\ProductRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

date_default_timezone_set('Asia/Ho_Chi_Minh');

class HomePageController extends AbstractController
{
    /**
     * @Route("/homepage", name="home_page")
     */
    public function indexAction(ProductRepository $repo): Response
    {
        $product = $repo->findAll();
        return $this->render("home_page/index.html.twig",[
            'product' =>$product
        ]);
    }
}
