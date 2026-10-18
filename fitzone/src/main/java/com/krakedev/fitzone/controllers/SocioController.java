package com.krakedev.fitzone.controllers;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.krakedev.fitzone.entidades.Socio;
import com.krakedev.fitzone.services.ServicioSocio;

@RestController
@RequestMapping("/socios")
public class SocioController {

	private final ServicioSocio service;
	
	public SocioController(ServicioSocio service) {
		this.service = service;
	}
	
	@GetMapping
	public ResponseEntity<?> obtenerTodos(){
		try {
			List<Socio> socios = service.listar();
			
			return ResponseEntity.ok(socios);
		}catch(Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error al consultar todos");
		}
	}

	
	@PostMapping
	public ResponseEntity<?> crear(@RequestBody Socio socio){
		try {
			Socio creado = service.crear(socio);
			
			return ResponseEntity.status(HttpStatus.CREATED).body(creado);
		}catch(IllegalArgumentException e) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
		}catch(Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error al crear el socio");
		}
	}
	
	
	
	
	
}
