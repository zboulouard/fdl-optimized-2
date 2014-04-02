package com.fdl.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="graph")
public class Graph {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column
	private String name;
	
	@ManyToMany(fetch = FetchType.EAGER)
	@Cascade({CascadeType.ALL})	
	@JoinTable(name = "graph_has_node", 
		joinColumns = {@JoinColumn(name = "graph_id") }, 
		inverseJoinColumns = {@JoinColumn(name = "node_id") }
	)
	private Set<Node> nodes; 
	
	@ManyToMany(fetch = FetchType.EAGER)
	@Cascade({CascadeType.ALL})
	@JoinTable(name = "graph_has_link", 
		joinColumns = {@JoinColumn(name = "graph_id") }, 
		inverseJoinColumns = {@JoinColumn(name = "link_id") 
	})
	private Set<Link> links;
	
	
	public Graph() {}
	
	public Graph(Set<Node> nodes, Set<Link> links) {
		super();
		this.nodes = nodes;
		this.links = links;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Set<Node> getNodes() {
		return nodes;
	}

	public void setNodes(Set<Node> nodes) {
		this.nodes = nodes;
	}

	public Set<Link> getLinks() {
		return links;
	}

	public void setLinks(Set<Link> links) {
		this.links = links;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}  
	
	
	
	
}
