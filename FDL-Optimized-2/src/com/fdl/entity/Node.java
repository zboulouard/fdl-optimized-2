package com.fdl.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OrderBy;
import javax.persistence.Table;



@Entity
@Table(name="node")
@Embeddable
public class Node {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@Column
	private String name;
	
	@Column(name = "groups")
	private Integer group;
	
	@Column
	private Integer organisme;

	@Column
	private Integer country;
	
	
	@ManyToMany(fetch = FetchType.EAGER, mappedBy = "nodes")
	@OrderBy("id")
	private Set<Graph> graph;
	
	public Node() {}
	
	public Node(String name, Integer group) {
		super();
		this.name = name;
		this.group = group;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getGroup() {
		return group;
	}
	public void setGroup(Integer group) {
		this.group = group;
	}

	public Set<Graph> getGraph() {
		return graph;
	}

	public void setGraph(Set<Graph> graph) {
		this.graph = graph;
	}

	public Integer getOrganisme() {
		return organisme;
	}

	public void setOrganisme(Integer organisme) {
		this.organisme = organisme;
	}

	public Integer getCountry() {
		return country;
	}

	public void setCountry(Integer country) {
		this.country = country;
	}

	
	
	
}
