// src/pages/ProfessorProfilePage.js
import React, { useContext, useEffect, useState } from 'react';
import { AuthContext } from '../components/AuthContext';
import { Link, useNavigate } from 'react-router-dom';
import axios from 'axios';

const ProfessorProfilePage = () => {
  const { user, logout } = useContext(AuthContext);
  const [turmas, setTurmas] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    // Requisição ao backend para obter as turmas do professor
    const fetchTurmas = async () => {
      // Exemplo de requisição:
      // const response = await axios.get(`/api/professores/${user.id}/turmas`);
      // setTurmas(response.data);
      
      // Simulação de dados
      setTurmas([
        { id: 1, nome: 'Turma A' },
        { id: 2, nome: 'Turma B' }
      ]);
    };
    fetchTurmas();
  }, [user]);

  return (
    <div>
      <h2>Bem-vindo, {user.name}</h2>
      <button onClick={() => logout(navigate)}>Sair</button>
      <h3>Suas Turmas</h3>
      <ul>
        {turmas.map((turma) => (
          <li key={turma.id}>
            <Link to={`/turma/${turma.id}`}>{turma.nome}</Link>
          </li>
        ))}
      </ul>
      <Link to="/cadastro-turma">
        <button>Cadastrar Nova Turma</button>
      </Link>
    </div>
  );
};

export default ProfessorProfilePage;
