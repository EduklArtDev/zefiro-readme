#! /bin/bash

touch README.md

echo 'Titulo?: '
read titulo

mdTitle="
# ${titulo^}
"

echo 'Descrição?: '
read descricao

mdDesc="
## Descrição
${descricao^}
"

mdStts="
## Status
![Status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow)
"

echo 'Tecs usadas?: '
read tecs

mdTecs="
## Tecnologias Usadas
${tecs^}
"

mdCon="## Contribuindo

Se você deseja contribuir para o projeto, siga estas etapas:

1. Faça um fork deste repositório.
2. Crie uma branch para sua feature ou correção:
   \`\`\`bash
   git checkout -b minha-feature
   \`\`\`
3. Faça as alterações e commit:
   \`\`\`bash
   git commit -am 'Adiciona nova feature'
   \`\`\`
4. Envie para o repositório remoto:
   \`\`\`bash
   git push origin minha-feature
   \`\`\`
5. Abra um Pull Request no GitHub."

echo "Agradecimentos?: "
read agrade

mdFinal="
## Agradecimentos

${agrade^}

## Contato

- **Email**: [eduardo.santucci@proton.me](mailto:eduardo.santucci@proton.me)
- **Instagram**: [@edukl.art](https://www.instagram.com/edukl.art/profilecard/?igsh=MWtyc2VwYjlyM21qYg%3D%3D)
- **TikTok**: [@edukl.art](https://www.tiktok.com/@edukl.art?_t=ZM-8t0zg4xCBvx&_r=1)
- **Portfolio**: [eduklartdev.github.io](https://eduklartdev.github.io/pt/)
"

echo -e "$mdTitle\n$mdDesc\n$mdStts\n$mdTecs\n$mdCon\n$mdFinal" > README.md