<?php

namespace App\Entity;

use App\Repository\ProductRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ProductRepository::class)
 */
class Product
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Productname;

    /**
     * @ORM\Column(type="integer")
     */
    private $Price;

    /**
     * @ORM\Column(type="integer")
     */
    private $oldPrice;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Productdes;

    /**
     * @ORM\Column(type="datetime")
     */
    private $Productdate;

    /**
     * @ORM\Column(type="integer")
     */
    private $Productquantity;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Productimage;

    /**
     * @ORM\ManyToOne(targetEntity=Brand::class, inversedBy="Productid")
     */
    private $Brandid;

    /**
     * @ORM\OneToMany(targetEntity=Cart::class, mappedBy="Productid")
     */
    private $Cartid;

    /**
     * @ORM\OneToMany(targetEntity=OrderDetail::class, mappedBy="Productid")
     */
    private $Orderdetailid;

    /**
     * @ORM\Column(type="integer")
     */
    private $Status;

    public function __construct()
    {
        $this->Cartid = new ArrayCollection();
        $this->Orderdetailid = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getProductname(): ?string
    {
        return $this->Productname;
    }

    public function setProductname(string $Productname): self
    {
        $this->Productname = $Productname;

        return $this;
    }

    public function getPrice(): ?int
    {
        return $this->Price;
    }

    public function setPrice(int $Price): self
    {
        $this->Price = $Price;

        return $this;
    }

    public function getOldPrice(): ?int
    {
        return $this->oldPrice;
    }

    public function setOldPrice(int $oldPrice): self
    {
        $this->oldPrice = $oldPrice;

        return $this;
    }

    public function getProductdes(): ?string
    {
        return $this->Productdes;
    }

    public function setProductdes(string $Productdes): self
    {
        $this->Productdes = $Productdes;

        return $this;
    }

    public function getProductdate(): ?\DateTimeInterface
    {
        return $this->Productdate;
    }

    public function setProductdate(\DateTimeInterface $Productdate): self
    {
        $this->Productdate = $Productdate;

        return $this;
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

    public function getProductimage(): ?string
    {
        return $this->Productimage;
    }

    public function setProductimage(string $Productimage): self
    {
        $this->Productimage = $Productimage;

        return $this;
    }

    public function getBrandid(): ?Brand
    {
        return $this->Brandid;
    }

    public function setBrandid(?Brand $Brandid): self
    {
        $this->Brandid = $Brandid;

        return $this;
    }

    /**
     * @return Collection<int, Cart>
     */
    public function getCartid(): Collection
    {
        return $this->Cartid;
    }

    public function addCartid(Cart $cartid): self
    {
        if (!$this->Cartid->contains($cartid)) {
            $this->Cartid[] = $cartid;
            $cartid->setProductid($this);
        }

        return $this;
    }

    public function removeCartid(Cart $cartid): self
    {
        if ($this->Cartid->removeElement($cartid)) {
            // set the owning side to null (unless already changed)
            if ($cartid->getProductid() === $this) {
                $cartid->setProductid(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, OrderDetail>
     */
    public function getOrderdetailid(): Collection
    {
        return $this->Orderdetailid;
    }

    public function addOrderdetailid(OrderDetail $orderdetailid): self
    {
        if (!$this->Orderdetailid->contains($orderdetailid)) {
            $this->Orderdetailid[] = $orderdetailid;
            $orderdetailid->setProductid($this);
        }

        return $this;
    }

    public function removeOrderdetailid(OrderDetail $orderdetailid): self
    {
        if ($this->Orderdetailid->removeElement($orderdetailid)) {
            // set the owning side to null (unless already changed)
            if ($orderdetailid->getProductid() === $this) {
                $orderdetailid->setProductid(null);
            }
        }

        return $this;
    }

    public function getStatus(): ?int
    {
        return $this->Status;
    }

    public function setStatus(int $Status): self
    {
        $this->Status = $Status;

        return $this;
    }
}
