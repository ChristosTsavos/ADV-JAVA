package com.example.demo.service;

import java.util.HashSet;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.dao.ClientRepository;
import com.example.demo.dao.RoleRepository;
import com.example.demo.model.Client;
import com.example.demo.model.Role;

/**
 * Provide service for registering account
 * 
 * @author raitis
 */
@Service
public class ClientServiceImpl implements ClientService {

	@Autowired
	private ClientRepository clientRepository;

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public Client save(Client client) {
		client.setPassword(bCryptPasswordEncoder.encode(client.getPassword()));

		client.setRoles(new HashSet<Role>(roleRepository.findAll()));
		return clientRepository.save(client);
	}

	@Override
	public Client findByEmail(String email) {
		return clientRepository.findByEmail(email);
	}

	@Override
	public List<Client> findAll() {
		// TODO Auto-generated method stub
		return clientRepository.findAll();
	}

	@Override
	public Client findCurrentClient() {
		// TODO Auto-generated method stub
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPrincipalName = authentication.getName();
		
		return clientRepository.findByEmail(currentPrincipalName);
	}

	@Override
	public Client findById(Long id) {
		// TODO Auto-generated method stub
		return clientRepository.findById(id).get();
	}

}
