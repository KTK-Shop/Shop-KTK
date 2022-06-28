<?php

namespace App\Controller;

use App\Repository\BrandRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class BrandMangementController extends AbstractController
{
    /**
     * @Route("/brand/mangement", name="app_brand_mangement")
     */
    public function indexAction(BrandRepository $repo): Response
    {   $brand = $repo->indexBrand();
        return $this->render('brand_mangement/index.html.twig', [
            'brand' => $brand
        ]);
    }
}
