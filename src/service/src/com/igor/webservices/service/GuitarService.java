package com.igor.webservices.service;

import com.igor.webservices.beans.Guitar;

public interface GuitarService {
	public boolean init();
	public boolean create(Guitar g);
	public Guitar read(int id);
	public Guitar[] readAll();
	public Guitar update(int id, Guitar g);
	public boolean delete(int id);
}
