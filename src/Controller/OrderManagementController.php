<?php

namespace App\Controller;

use App\Repository\OrderRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class OrderManagementController extends AbstractController
{
    /**
     * @Route("/order/management", name="app_order_management")
     */
    public function indexAction(OrderRepository $repo): Response
    {   $order = $repo->indexOrder();
        return $this->render('order_management/index.html.twig', [
            'order' => $order
        ]);
    }
}
