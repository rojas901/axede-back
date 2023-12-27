package com.caranroja.hotel.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;

@Entity
@Table(name = "habitaciones")
@Data
public class Habitacion {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  private String tipo;
  private int cupoMaximo;
  private double tarifaBase;
  private LocalDate fechaInicio;
  private LocalDate fechaFin;
  private boolean disponible;
  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "sede_id")
  private Sede sede;
  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "temporada_id")
  private Temporada temporada;
}
