package com.employee.dao;

import java.util.List;

import com.employee.domain.Department;

/**
 * 员工管理的dao接口
 * @author Administrator
 */
public interface DepartmentDao {
	
	int findCount();
	
	List<Department> findByPage(int begin, int pageSize);
	
	void save(Department department);

    Department editById(Integer did);

	void update(Department department);

	void delete(Department department);

	List<Department> findAll();
	
}
