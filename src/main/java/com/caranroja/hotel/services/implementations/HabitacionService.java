package com.caranroja.hotel.services.implementations;

import com.caranroja.hotel.entities.Habitacion;
import com.caranroja.hotel.entities.Sede;
import com.caranroja.hotel.repositories.IHabitacionRepository;
import com.caranroja.hotel.services.IHabitacionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class HabitacionService implements IHabitacionService {

  private final IHabitacionRepository habitacionRepository;

  @Override
  public List<Habitacion> findAll() {
    return (List<Habitacion>) habitacionRepository.findAll();
  }
}
