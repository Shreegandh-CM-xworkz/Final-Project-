package com.xworkz.realestate.controller;

import com.xworkz.realestate.dto.FormDto;
import com.xworkz.realestate.repository.FormRepo;
import com.xworkz.realestate.repository.FormRepoImpl;

public class Main {
    public static void main(String[] args) {
        FormRepoImpl repo=new FormRepoImpl();
       FormDto dto = repo.getUserByEmail("shreegandh4321@gmail.com");
        System.out.println(dto);

    }
}
