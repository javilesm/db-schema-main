-- Tabla para registrar los trabajos de procesamiento de la GPU
CREATE TABLE IF NOT EXISTS job_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    job_name VARCHAR(255) NOT NULL,
    status VARCHAR(50) NOT NULL,
    completed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Aseguramos que el usuario tenga permisos desde cualquier IP de la red interna (192.168.56.x)
GRANT ALL PRIVILEGES ON pipeline_db.* TO 'pipeline_user'@'%';
FLUSH PRIVILEGES;
