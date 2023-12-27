package com.caranroja.hotel.controllers;

import com.caranroja.hotel.entities.Habitacion;
import com.caranroja.hotel.services.IHabitacionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/habitaciones")
@CrossOrigin("*")
@RequiredArgsConstructor
public class HabitacionController {
  private IHabitacionService habitacionService;

  @GetMapping
  public ResponseEntity<List<Habitacion>> findAll() {
    return ResponseEntity.ok(habitacionService.findAll());
  }
}
