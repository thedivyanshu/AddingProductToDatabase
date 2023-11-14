package com.admin.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class admin {
private String name;
@Id
private String email;
private String password;
@Temporal(TemporalType.DATE)
private Date doB;


}
