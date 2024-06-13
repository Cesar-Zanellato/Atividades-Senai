// src/pages/TurmaFormPage.js
import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';

const TurmaFormPage = () => {
  const [nome, setNome] = useState('');
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();
    // Enviar o nome da turma para o backend
    // Exemplo de requisição:
    // await axios.post('/api/turmas', { nome });
    
    // Simulação de envio
    console.log('Turma cadastrada:', nome);
    
    navigate('/profile');
  };

  return (
    <div>
      <h2>Cadastrar Nova Turma</h2>
      <form onSubmit={handleSubmit}>
        <div>
          <label>Nome da Turma:</label>
          <input
            type="text"
            value={nome}
            onChange={(e) => setNome(e.target.value)}
            required
          />
        </div>
        <button type="submit">Cadastrar</button>
      </form>
    </div>
  );
};

export default TurmaFormPage;
