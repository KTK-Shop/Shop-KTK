<?php

namespace App\Entity;

use App\Repository\CustomerRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CustomerRepository::class)
 */
class Customer
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
    private $Username;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Password;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $CustomerName;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Gender;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Address;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Telephone;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Birthday;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Email;

    /**
     * @ORM\OneToMany(targetEntity=Cart::class, mappedBy="Customerid")
     */
    private $Cartid;

    /**
     * @ORM\OneToMany(targetEntity=Order::class, mappedBy="Customerid")
     */
    private $Orderid;

    public function __construct()
    {
        $this->Cartid = new ArrayCollection();
        $this->Orderid = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUsername(): ?string
    {
        return $this->Username;
    }

    public function setUsername(string $Username): self
    {
        $this->Username = $Username;

        return $this;
    }

    public function getPassword(): ?string
    {
        return $this->Password;
    }

    public function setPassword(string $Password): self
    {
        $this->Password = $Password;

        return $this;
    }

    public function getCustomerName(): ?string
    {
        return $this->CustomerName;
    }

    public function setCustomerName(string $CustomerName): self
    {
        $this->CustomerName = $CustomerName;

        return $this;
    }

    public function getGender(): ?string
    {
        return $this->Gender;
    }

    public function setGender(string $Gender): self
    {
        $this->Gender = $Gender;

        return $this;
    }

    public function getAddress(): ?string
    {
        return $this->Address;
    }

    public function setAddress(string $Address): self
    {
        $this->Address = $Address;

        return $this;
    }

    public function getTelephone(): ?string
    {
        return $this->Telephone;
    }

    public function setTelephone(string $Telephone): self
    {
        $this->Telephone = $Telephone;

        return $this;
    }

    public function getBirthday(): ?string
    {
        return $this->Birthday;
    }

    public function setBirthday(string $Birthday): self
    {
        $this->Birthday = $Birthday;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->Email;
    }

    public function setEmail(string $Email): self
    {
        $this->Email = $Email;

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
            $cartid->setCustomerid($this);
        }

        return $this;
    }

    public function removeCartid(Cart $cartid): self
    {
        if ($this->Cartid->removeElement($cartid)) {
            // set the owning side to null (unless already changed)
            if ($cartid->getCustomerid() === $this) {
                $cartid->setCustomerid(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Order>
     */
    public function getOrderid(): Collection
    {
        return $this->Orderid;
    }

    public function addOrderid(Order $orderid): self
    {
        if (!$this->Orderid->contains($orderid)) {
            $this->Orderid[] = $orderid;
            $orderid->setCustomerid($this);
        }

        return $this;
    }

    public function removeOrderid(Order $orderid): self
    {
        if ($this->Orderid->removeElement($orderid)) {
            // set the owning side to null (unless already changed)
            if ($orderid->getCustomerid() === $this) {
                $orderid->setCustomerid(null);
            }
        }

        return $this;
    }
}
