-- Crée la table `users` si elle n'existe pas encore
CREATE TABLE IF NOT EXISTS `users` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,         -- Identifiant unique pour chaque utilisateur
    `identifier` VARCHAR(64) NOT NULL,          -- Identifiant unique (SteamID ou autre)
    `firstname` VARCHAR(50),                    -- Prénom du personnage
    `lastname` VARCHAR(50),                     -- Nom de famille du personnage
    `job` VARCHAR(50) DEFAULT 'unemployed',     -- Métier du personnage
    `job_grade` INT DEFAULT 0,                  -- Grade du métier
    `position` TEXT,                            -- Position du joueur (JSON : x, y, z)
    `skin` TEXT,                                -- Apparence/skin du joueur (JSON)
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date de création
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Date de mise à jour
);

-- Ajoute un exemple d'utilisateur pour tester
INSERT INTO `users` (`identifier`, `firstname`, `lastname`, `job`, `job_grade`, `position`, `skin`) VALUES
('steam:1100001122334455', 'John', 'Doe', 'police', 1, '{"x": 215.12, "y": -810.23, "z": 30.73}', '{"hair": "short", "color": "brown"}');
