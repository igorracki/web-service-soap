package com.igor.webservices.service;

public class GuitarServiceImplProxy implements com.igor.webservices.service.GuitarServiceImpl {
  private String _endpoint = null;
  private com.igor.webservices.service.GuitarServiceImpl guitarServiceImpl = null;
  
  public GuitarServiceImplProxy() {
    _initGuitarServiceImplProxy();
  }
  
  public GuitarServiceImplProxy(String endpoint) {
    _endpoint = endpoint;
    _initGuitarServiceImplProxy();
  }
  
  private void _initGuitarServiceImplProxy() {
    try {
      guitarServiceImpl = (new com.igor.webservices.service.GuitarServiceImplServiceLocator()).getGuitarServiceImpl();
      if (guitarServiceImpl != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)guitarServiceImpl)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)guitarServiceImpl)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (guitarServiceImpl != null)
      ((javax.xml.rpc.Stub)guitarServiceImpl)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public com.igor.webservices.service.GuitarServiceImpl getGuitarServiceImpl() {
    if (guitarServiceImpl == null)
      _initGuitarServiceImplProxy();
    return guitarServiceImpl;
  }
  
  public com.igor.webservices.beans.Guitar update(int id, com.igor.webservices.beans.Guitar g) throws java.rmi.RemoteException{
    if (guitarServiceImpl == null)
      _initGuitarServiceImplProxy();
    return guitarServiceImpl.update(id, g);
  }
  
  public boolean init() throws java.rmi.RemoteException{
    if (guitarServiceImpl == null)
      _initGuitarServiceImplProxy();
    return guitarServiceImpl.init();
  }
  
  public boolean delete(int id) throws java.rmi.RemoteException{
    if (guitarServiceImpl == null)
      _initGuitarServiceImplProxy();
    return guitarServiceImpl.delete(id);
  }
  
  public com.igor.webservices.beans.Guitar read(int id) throws java.rmi.RemoteException{
    if (guitarServiceImpl == null)
      _initGuitarServiceImplProxy();
    return guitarServiceImpl.read(id);
  }
  
  public boolean create(com.igor.webservices.beans.Guitar g) throws java.rmi.RemoteException{
    if (guitarServiceImpl == null)
      _initGuitarServiceImplProxy();
    return guitarServiceImpl.create(g);
  }
  
  public com.igor.webservices.beans.Guitar[] readAll() throws java.rmi.RemoteException{
    if (guitarServiceImpl == null)
      _initGuitarServiceImplProxy();
    return guitarServiceImpl.readAll();
  }
  
  
}