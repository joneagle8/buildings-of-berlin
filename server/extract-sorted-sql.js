const fs = require('fs');
const path = require('path');

const migrationsFolder = path.join(__dirname, '.maki/migrations');
const outputFile = path.join(__dirname, 'sorted-migrations.sql');

let consolidatedSQL = '';

// Read and sort migration files by name
const migrationFiles = fs.readdirSync(migrationsFolder)
    .filter(file => file.endsWith('.json'))
    .sort(); // Sort filenames alphabetically

migrationFiles.forEach(file => {
    const filePath = path.join(migrationsFolder, file);
    const migration = JSON.parse(fs.readFileSync(filePath, 'utf-8'));
    if (migration.operations && migration.operations.length > 0) {
        migration.operations.forEach(operation => {
            if (operation.sql && operation.sql.up) {
                consolidatedSQL += `-- From ${file}\n` + operation.sql.up + '\n\n';
            }
        });
    }
});

fs.writeFileSync(outputFile, consolidatedSQL);
console.log(`Sorted SQL commands have been consolidated into ${outputFile}`);