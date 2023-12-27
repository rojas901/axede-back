package com.caranroja.hotel.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Table(name = "sedes")
@Data
public class Sede {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  private String ciudad;

  @JsonBackReference
  @OneToMany(
      fetch = FetchType.EAGER,
      cascade = CascadeType.ALL,
      mappedBy = "sede"
  )
  private List<Habitacion> habitaciones;
}
