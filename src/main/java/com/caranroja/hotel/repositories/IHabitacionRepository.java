package com.caranroja.hotel.repositories;

import com.caranroja.hotel.entities.Habitacion;
import org.springframework.data.repository.CrudRepository;

public interface IHabitacionRepository extends CrudRepository<Habitacion, Long> {
}
