<?php

namespace App\Entity;

use App\Repository\CartRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CartRepository::class)
 */
class Cart
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     */
    private $Productquantity;

    /**
     * @ORM\ManyToOne(targetEntity=Customer::class, inversedBy="Cartid")
     * @ORM\JoinColumn(nullable=false)
     */
    private $Customerid;

    /**
     * @ORM\ManyToOne(targetEntity=Product::class, inversedBy="Cartid")
     */
    private $Productid;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getProductquantity(): ?int
    {
        return $this->Productquantity;
    }

    public function setProductquantity(int $Productquantity): self
    {
        $this->Productquantity = $Productquantity;

        return $this;
    }

    public function getCustomerid(): ?Customer
    {
        return $this->Customerid;
    }

    public function setCustomerid(?Customer $Customerid): self
    {
        $this->Customerid = $Customerid;

        return $this;
    }

    public function getProductid(): ?Product
    {
        return $this->Productid;
    }

    public function setProductid(?Product $Productid): self
    {
        $this->Productid = $Productid;

        return $this;
    }
}
