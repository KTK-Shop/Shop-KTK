<?php

namespace App\Controller;

use App\Repository\CustomerRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AccountMamagementController extends AbstractController
{
    /**
     * @Route("/account/mamagement", name="app_account_mamagement")
     */
    public function indexAction(CustomerRepository $repo): Response
    {
        $account = $repo->indexAccount();
        return $this->render('account_mamagement/index.html.twig', [
            'account' => $account
        ]);
    }
}
