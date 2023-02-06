import 'package:flutter/material.dart';

class OnboardContent {
  String image;
  String text;
  String descripcion;

  OnboardContent(
      {required this.image, required this.text, required this.descripcion});
}

List<OnboardContent> contents = [
  OnboardContent(
    image: "assets/images/b1.png", 
    text: "ESPARCIMIENTO", 
    descripcion: "Brindamos todos los servicios para consentir a tu mascota"),
  OnboardContent(
    image: "assets/images/b2.png", 
    text: "ADOPCIÓN", 
    descripcion: "Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat"),
  OnboardContent(
    image: "assets/images/b3.png", 
    text: "HOSPITALIDAD", 
    descripcion: "Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat"),
  OnboardContent(
    image: "assets/images/b4.png", 
    text: "VETERINARIA",
    descripcion: "Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat"),
  OnboardContent(
    image: "assets/images/b5.png", 
    text: "TIENDA", 
    descripcion: "Compra todas las necesidades de tu mascota sin salir de casa"),
];
