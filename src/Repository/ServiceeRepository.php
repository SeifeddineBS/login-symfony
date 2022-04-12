<?php

namespace App\Repository;

use App\Entity\Servicee;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Servicee|null find($id, $lockMode = null, $lockVersion = null)
 * @method Servicee|null findOneBy(array $criteria, array $orderBy = null)
 * @method Servicee[]    findAll()
 * @method Servicee[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ServiceeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Servicee::class);
    }

    function OrderByNom(){
        return $this->createQueryBuilder('e')
            ->orderBy('e.nom','ASC')
            ->setMaxResults(10000)->getQuery()->getResult();
    }

    function RechercheNom($nom){
        return $this->createQueryBuilder('e')
            ->where('e.nom LIKE :nom')
            ->setParameter('nom','%'.$nom.'%')
            ->getQuery()->getResult();
    }


    // /**
    //  * @return Servicee[] Returns an array of Servicee objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('s.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Servicee
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
