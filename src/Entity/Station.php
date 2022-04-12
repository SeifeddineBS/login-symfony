<?php

namespace App\Entity;

use App\Repository\StationRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * @ORM\Entity(repositoryClass=StationRepository::class)
 * @UniqueEntity("longitude" , message="longitude doit etre unique")
 * @UniqueEntity("latitude" , message="latitude doit etre unique ")
 */
class Station
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;




    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank(message="gouvernerat est obligatoire")
     */
    private $gouv;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank(message="ss est obligatoire")
     */
    private $ss;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank(message="adresse est obligatoire")
     */
    private $adresse;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank(message="localite est obligatoire")
     */
    private $localite;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank(message="longitude est obligatoire")
     */
    private $longitude;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank(message="latitude est obligatoire")
     */
    private $latitude;



    public function getId(): ?int
    {
        return $this->id;
    }

    public function getGouv(): ?string
    {
        return $this->gouv;
    }

    public function setGouv(string $gouv): self
    {
        $this->gouv = $gouv;

        return $this;
    }

    public function getSs(): ?string
    {
        return $this->ss;
    }

    public function setSs(string $ss): self
    {
        $this->ss = $ss;

        return $this;
    }

    public function getAdresse(): ?string
    {
        return $this->adresse;
    }

    public function setAdresse(string $adresse): self
    {
        $this->adresse = $adresse;

        return $this;
    }

    public function getLocalite(): ?string
    {
        return $this->localite;
    }

    public function setLocalite(string $localite): self
    {
        $this->localite = $localite;

        return $this;
    }

    public function getLongitude(): ?string
    {
        return $this->longitude;
    }

    public function setLongitude(string $longitude): self
    {
        $this->longitude = $longitude;

        return $this;
    }

    public function getLatitude(): ?string
    {
        return $this->latitude;
    }

    public function setLatitude(string $latitude): self
    {
        $this->latitude = $latitude;

        return $this;
    }


}
