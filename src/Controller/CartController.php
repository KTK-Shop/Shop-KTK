<?php

namespace App\Controller;

use App\Entity\Cart;
use App\Repository\CartRepository;
use App\Repository\ProductRepository;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CartController extends AbstractController
{
    /**
     * @Route("/cart", name="app_cart")
     */
    public function indexAction(CartRepository $repo): Response
    {
        $cart = $repo->findAll();
        return $this->render("cart/index.html.twig",[
            'cart' =>$cart
        ]);
    }

    /**
     * @Route("/addcart/{id}", name="addcart")
     */
    public function addCartAction( int $id, ManagerRegistry $res): Response
    {
        $entity = $res->getManager();
        $cart = new Cart();
       
        $cart->setProductquantity(1);
        $cart->setCustomerid(1);
        $cart->setProductid($id);

        $entity->persist($cart);
        $entity->flush();
        return $this->json($cart);
    }

    
}
