package com.caranroja.hotel.services;

import com.caranroja.hotel.entities.Habitacion;

import java.util.List;

public interface IHabitacionService {
  List<Habitacion> findAll();
}
