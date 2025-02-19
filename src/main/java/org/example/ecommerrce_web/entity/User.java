package org.example.ecommerrce_web.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
//@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userId;
    private String userName;
    private String email;
    private String password;
    private String role;

    @OneToMany(mappedBy = "user" , cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Cart> cart;
    @OneToMany(mappedBy = "user" )
    private List<Orders> order;

    public User(Long userId, String userName, String email, String password, String role) {
        this.userId = userId;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.role = role;
    }
}
