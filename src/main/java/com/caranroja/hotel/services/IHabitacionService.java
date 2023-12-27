package com.caranroja.hotel.services;

import com.caranroja.hotel.entities.Habitacion;
import com.caranroja.hotel.entities.Sede;

import java.util.List;

public interface IHabitacionService {
  List<Habitacion> findAll();
}
