#! /bin/bash

defCor="\e[32m"
defCorTwo="\e[38;5;93m"
restCor="\e[0m"

echo -e "${defCorTwo}

░░░░░░░░░░░░░░░░░░░░░▄▀░░▌
░░░░░░░░░░░░░░░░░░░▄▀▐░░░▌
░░░░░░░░░░░░░░░░▄▀▀▒▐▒░░░▌
░░░░░▄▀▀▄░░░▄▄▀▀▒▒▒▒▌▒▒░░▌
░░░░▐▒░░░▀▄▀▒▒▒▒▒▒▒▒▒▒▒▒▒█
░░░░▌▒░░░░▒▀▄▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄
░░░░▐▒░░░░░▒▒▒▒▒▒▒▒▒▌▒▐▒▒▒▒▒▀▄
░░░░▌▀▄░░▒▒▒▒▒▒▒▒▐▒▒▒▌▒▌▒▄▄▒▒▐
░░░▌▌▒▒▀▒▒▒▒▒▒▒▒▒▒▐▒▒▒▒▒█▄█▌▒▒▌
░▄▀▒▐▒▒▒▒▒▒▒▒▒▒▒▄▀█▌▒▒▒▒▒▀▀▒▒▐░░░▄
▀▒▒▒▒▌▒▒▒▒▒▒▒▄▒▐███▌▄▒▒▒▒▒▒▒▄▀▀▀▀
▒▒▒▒▒▐▒▒▒▒▒▄▀▒▒▒▀▀▀▒▒▒▒▄█▀░░▒▌▀▀▄▄
▒▒▒▒▒▒█▒▄▄▀▒▒▒▒▒▒▒▒▒▒▒░░▐▒▀▄▀▄░░░░▀
▒▒▒▒▒▒▒█▒▒▒▒▒▒▒▒▒▄▒▒▒▒▄▀▒▒▒▌░░▀▄
▒▒▒▒▒▒▒▒▀▄▒▒▒▒▒▒▒▒▀▀▀▀▒▒▒▄▀
${restCor}
"

echo -e "${defCor}\n@edukl.art\n${restCor}"

touch README.md

echo -e "Titulo?: "
read titulo

mdTitle="
# ${titulo^}
"

echo "Descrição?: "
read descricao

mdDesc="
## Descrição
${descricao^}
"
echo "stts 1,2?: "
read stts

if [ "$stts" == "1" ]; then
   mdStts="
## Status
![Status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow)
![Licença](https://img.shields.io/badge/Licen%C3%A7a-MIT-green)
![Versão](https://img.shields.io/badge/Vers%C3%A3o-1.0.0-brightgreen)
"
elif [ "$stts" == "2" ]; then
   mdStts="
## Status
![Status](https://img.shields.io/badge/status-%20finalizado-gren)
![Licença](https://img.shields.io/badge/Licen%C3%A7a-MIT-green)
![Versão](https://img.shields.io/badge/Vers%C3%A3o-1.0.0-brightgreen)
"
fi

echo "Tecs usadas?: "
read tecs

if [ "$tecs" == "js" ]; then
   mdTecs="
## Linguagem
![Linguagem](https://img.shields.io/badge/Linguagem-JS-yellow)
"
elif [ "$tecs" == "php" ]; then 
   mdTecs="
## Linguagem
![Linguagem](https://img.shields.io/badge/Linguagem-PHP-blue)
"
elif [ "$tecs" == "shell" ]; then 
   mdTecs="
## Linguagem
![Linguagem](https://img.shields.io/badge/Linguagem-ShellScript-gren)
"
fi


mdCon="## Contribuindo

![Contribuições](https://img.shields.io/badge/Contribui%C3%A7%C3%B5es-Bem--vindas-blueviolet)

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
![Feito com ❤️](https://img.shields.io/badge/Feito%20com-%E2%9D%A4-red)

## Contato

- **Email**: [eduardo.santucci@proton.me](mailto:eduardo.santucci@proton.me)
- **Instagram**: [@edukl.art](https://www.instagram.com/edukl.art/profilecard/?igsh=MWtyc2VwYjlyM21qYg%3D%3D)
- **TikTok**: [@edukl.art](https://www.tiktok.com/@edukl.art?_t=ZM-8t0zg4xCBvx&_r=1)
- **Portfolio**: [eduklartdev.github.io](https://eduklartdev.github.io/pt/)
"

echo -e "$mdTitle\n$mdDesc\n$mdStts\n$mdTecs\n$mdCon\n$mdFinal" > README.md
