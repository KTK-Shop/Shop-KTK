<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class OrderHistoryController extends AbstractController
{
    /**
     * @Route("/order/history", name="app_order_history")
     */
    public function indexAction(): Response
    {
        return $this->render('order_history/index.html.twig', [
            'controller_name' => 'OrderHistoryController',
        ]);
    }
}
