<?php

namespace App\Form;

use App\Entity\Brand;
use App\Entity\Product;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class AddProManageType extends AbstractType{
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class'=>Product::class
        ]);
    }

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('Productname', TextType::class)
            ->add('Price', TextType::class)
            ->add('Productdes', TextType::class)
            ->add('Productdate', DateType::class,[
                'widget' => 'single_text'
            ])
            ->add('Productquantity', TextType::class)
            ->add('Productimage', FileType::class, [
                'label' => 'Productimage'])
            ->add('Brandid', EntityType::class, [
                'class' =>Brand::class,
                'choice_label' =>'Brandname'
            ])
            ->add('Status', ChoiceType::class, [
                'choices'  => [
                    '0' => true,
                    '1' => false,
                ], 
            ])
            ->add('save', SubmitType::class, [
                'label' => "Save"
            ]);
    }
}

?>