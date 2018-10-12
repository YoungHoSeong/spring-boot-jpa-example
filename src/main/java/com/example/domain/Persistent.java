package com.example.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Timestamp;

@Entity
@Table(name = "persistent_logins")
public class Persistent {
    @Id
    private String series;
    private String username;
    private String token;
    private Timestamp lastUsed;
}
