package com.sanjay.springtiles.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.yaml.snakeyaml.Yaml;

import java.util.Collection;
import java.util.Map;

/**
 * Created by tuedang on 9/15/16.
 */
public class InitDataLoader {

    public static void load(JpaRepository repository, String fileNameInClasspath) {
        Yaml yaml = new Yaml();
        for (Object obj : yaml.loadAll(InitDataLoader.class.getResourceAsStream(fileNameInClasspath))) {
            persist(repository, obj);
        }

    }

    private static void persist(JpaRepository repository, Object obj) {
        if (obj instanceof Collection) {
            for (Object object : (Collection) obj) {
                persist(repository, object);
            }

        } else if (obj instanceof Map) {
            for (Object object : ((Map) obj).values()) {
                persist(repository, object);
            }

        } else {
            repository.save(obj);
        }
    }
}
