/**
 * 
 */
package com.example.uabc.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.uabc.model.Game;

/**
 * @author ricardo
 *
 */
public interface GameRepository  extends CrudRepository<Game, Integer>{

}
