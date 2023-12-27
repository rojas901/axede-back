package com.caranroja.hotel.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "temporadas")
@Data
public class Temporada {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  private String tipo;
  private LocalDate fechaInicio;
  private LocalDate fechaFin;
  private Double recargoTemporada;

  @JsonBackReference
  @OneToMany(
      fetch = FetchType.EAGER,
      cascade = CascadeType.ALL,
      mappedBy = "temporada"
  )
  private List<Habitacion> habitaciones;
}
