package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Authorities {
@Id
@Column
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@Column
private String username;
@Column
private String role;
}
