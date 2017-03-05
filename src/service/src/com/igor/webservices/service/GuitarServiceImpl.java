package com.igor.webservices.service;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import com.igor.webservices.beans.Guitar;

public class GuitarServiceImpl implements GuitarService {

	private static Map<Integer, Guitar> guitars = new HashMap<Integer, Guitar>();
	
	@Override
	public boolean init() {
		Guitar guitar1 = new Guitar();
		Guitar guitar2 = new Guitar();
		
		guitar1.setId(1);
		guitar1.setBrand("Les Paul");
		guitar1.setModel("Epiphone Special Vintage");
		guitar1.setColor("Worn Ebony");
		guitar1.setPrice(140.00);
		guitar1.setImage("image1.jpg");
		
		guitar2.setId(2);
		guitar2.setBrand("Fender Squier");
		guitar2.setModel("Stratocaster 70s Vintage");
		guitar2.setColor("Maple Black");
		guitar2.setPrice(379.00);
		guitar2.setImage("image2.jpg");
		
		create(guitar1);
		create(guitar2);
		
		if(guitars.isEmpty())
			return false;
		else 
			return true;
	}

	@Override
	public boolean create(Guitar g) {
		if(guitars.get(g.getId()) != null)
			return false;
		else {
			guitars.put(g.getId(), g);
			return true;
		}
	}

	@Override
	public Guitar read(int id) {
		if(guitars.get(id) == null)
			return null;
		else {
			return guitars.get(id);
		}
	}

	@Override
	public Guitar[] readAll() {
		if(guitars.isEmpty())
			return null;
		else {
			Set<Integer> keys = guitars.keySet();
			Guitar[] gs = new Guitar[keys.size()];
			
			int i = 0;
			for(Integer key : keys) {
				gs[i] = guitars.get(key);
				i++;
			}
			
			return gs;
		}
	}

	@Override
	public Guitar update(int id, Guitar g) {
		if(guitars.get(g.getId()) == null)
			return null;
		else {
			guitars.put(g.getId(), g);
			return g;
		}
	}

	@Override
	public boolean delete(int id) {
		if(guitars.get(id) == null)
			return false;
		else {
			guitars.remove(id);
			return true;
		}
	}
}
