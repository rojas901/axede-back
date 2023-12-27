package com.caranroja.hotel.controllers;

import com.caranroja.hotel.entities.Habitacion;
import com.caranroja.hotel.entities.Sede;
import com.caranroja.hotel.services.IHabitacionService;
import com.caranroja.hotel.services.implementations.HabitacionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/habitaciones")
@CrossOrigin("*")
@RequiredArgsConstructor
public class HabitacionController {
  private final IHabitacionService habitacionService;

  @GetMapping
  public ResponseEntity<List<Habitacion>> findAll() {
    return ResponseEntity.ok(habitacionService.findAll());
  }
}
