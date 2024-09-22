package service;

import tools.Pager;
import entity.AppointMent;
import exception.ServiceException;

public interface AppointMentService {
	public void addAppointMent(AppointMent appointMent) throws ServiceException;
	
	public void modifyAppointMent(AppointMent appointMent)throws ServiceException;
	
	public AppointMent findAppointMentById(Integer id)throws ServiceException;
	
	public Pager<AppointMent> findAppointMentByPatientAndPage(Integer pid, Integer pageNo,Integer pageSize)throws ServiceException;

	public Pager<AppointMent> findAppointMentByDoctorAndPage(Integer did, Integer pageNo,Integer pageSize)throws ServiceException;
	
	public void removeAppointMent(Integer aid) throws ServiceException;
}
