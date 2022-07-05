<?php

namespace App\Form;

use App\Entity\Brand;
use App\Entity\Product;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UpdateProManageType extends AbstractType{
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class'=>Product::class
        ]);
    }

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('Productname', TextType::class, [
                'label' => 'Product Name'
            ])
            ->add('Price', TextType::class, [
                'label' => 'Product Price'
            ])
            ->add('Productdes',  TextareaType::class, [
                'attr' => ['class' => 'tinymce'],
                'label' => 'Product Description'
            ])
            ->add('Productdate', DateType::class,[
                'widget' => 'single_text',
                'label' => 'Product Date'
            ])
            ->add('Productquantity', TextType::class, [
                'label' => 'Product Quantity'
            ])
            ->add('Brandid', EntityType::class, [
                'class' =>Brand::class,
                'choice_label' =>'Brandname',
                'label' => 'Brand'
            ])
            ->add('Status', ChoiceType::class, 
            [
                'choices' => [
                    'Available' => '1',
                    'Unavailable' => '0',
                ],
                'expanded' => true
            ]);
    }
}

?>