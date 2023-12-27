package com.caranroja.hotel.repositories;

import com.caranroja.hotel.entities.Habitacion;
import com.caranroja.hotel.entities.Sede;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IHabitacionRepository extends CrudRepository<Habitacion, Long> {
}
