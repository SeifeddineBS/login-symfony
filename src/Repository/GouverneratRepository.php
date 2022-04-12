<?php

namespace App\Repository;

use App\Entity\Gouvernerat;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Gouvernerat|null find($id, $lockMode = null, $lockVersion = null)
 * @method Gouvernerat|null findOneBy(array $criteria, array $orderBy = null)
 * @method Gouvernerat[]    findAll()
 * @method Gouvernerat[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class GouverneratRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Gouvernerat::class);
    }

    function OrderByN(){
        return $this->createQueryBuilder('e')
            ->orderBy('e.nom','ASC')
            ->setMaxResults(10000)->getQuery()->getResult();
    }

    // /**
    //  * @return Gouvernerat[] Returns an array of Gouvernerat objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('g')
            ->andWhere('g.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('g.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Gouvernerat
    {
        return $this->createQueryBuilder('g')
            ->andWhere('g.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
