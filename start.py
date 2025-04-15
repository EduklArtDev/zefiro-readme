import json
from asciimatics.effects import Cycle, Stars # type: ignore
from asciimatics.renderers import FigletText # type: ignore
from asciimatics.scene import Scene # type: ignore
from asciimatics.screen import Screen # type: ignore

def demo(screen):
    effects = [
        Cycle(
            screen,
            FigletText("Zefiro", font='big'),
            int(screen.height / 2 - 8)),
        Cycle(
            screen,
            FigletText("Readme", font='big'),
            int(screen.height / 2 + 3)),
        Stars(screen, 200)
    ]
    screen.play([Scene(effects, duration=30)], repeat=False)


Screen.wrapper(demo)

with open('dds.json') as f:
    dados = json.load(f)

    print(dados["contatoInfos"]["email"])



armaArt = """
  .-------..___  
  '-._     :_.-' 
      ) _ (      
     '-' '-'     
"""

print(armaArt)



nomerepo = input('nome repo:? ')

title = input('What title:? ')

description = input('What description:? ')

comoUsar = input('Como usar:? ')

technologiesUsed = input('technologies used:? ')

Contributing = """## Contribuindo

![Contribuições](https://img.shields.io/badge/Contribui%C3%A7%C3%B5es-Bem--vindas-blueviolet)

Se você deseja contribuir para o projeto, siga estas etapas:

1. Faça um fork deste repositório.
2. Crie uma branch para sua feature ou correção:
   ```bash
   git checkout -b minha-feature
   ```
3. Faça as alterações e commit:
   ```bash
   git commit -am 'Adiciona nova feature'
   ```
4. Envie para o repositório remoto:
   ```bash
   git push origin minha-feature
   ```
5. Abra um Pull Request no GitHub.
"""

contact = f"""## Contato

- **Email**: [{dados["contatoInfos"]["email"]}](mailto:{dados["user"]["nomeGThub"]})
- **Instagram**: [jajakkk](url)
- **Portfolio**: [eduklartdev.github.io](https://eduklartdev.github.io/pt/)"""




tituloEStts = f"""<div align="center">

# 🌟 {title}

![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-orange?style=for-the-badge)
![Licença](https://img.shields.io/badge/Licença-MIT-green?style=for-the-badge)
![Estrelas](https://img.shields.io/github/stars/{dados['user']['nomeGThub']}/{nomerepo}?style=social)

**{description}** 🚀

</div>
"""

comoUsarTXT = f"""
## 🚀 Como Executar 
{comoUsar}
"""

tecUsa = f"""
## 🛠 Tecnologias Utilizadas
{technologiesUsed}
"""

tks = f"""
    ## Agradecimentos

![Português](https://img.shields.io/badge/lang-pt--BR-green?style=flat&logo=data:image/png;base64,iVBORw0KGgoAAAANSUh...)  

"Agradeço ao meio, ao momento em que fiz esse projeto, também sem esquecer dela, a circunstância. Agradeço a ela, pois sem ela talvez não tivesse esse projeto. Todos os projetos são de total responsabilidade/culpa da circunstância. Algo como uma manifestação da teoria do caos. Agradeço também aos responsáveis pelas tecnologias usadas aqui, tais como o GitHub e o motor de busca que utilizei e aos muitos artigos bem escritos - alguns nem tanto - que li em busca de aprender a fazer isso ou aquilo. Agradeço imensamente a mim, que por vontade fiz isso tudo, e agradeço a você, que vê este projeto, pois sem você esse projeto de nada faria sentido em existir. Obrigado."
![Feito com ❤️](https://img.shields.io/badge/Feito%20com-%E2%9D%A4-red)

![English](https://img.shields.io/badge/lang-en--US-blue?style=flat&logo=data:image/png;base64,iVBORw0KGgoAAAANSUh...)

“I thank the environment, the moment when I did this project, without forgetting her, the circumstance. I thank it, because without it I might not have had this project. All projects are the total responsibility/blame of circumstance. Something like a manifestation of chaos theory. I also thank those responsible for the technologies used here, such as GitHub and the search engine I used, and the many well-written articles - some not so well-written - that I read in an effort to learn how to do this or that. I'm very grateful to myself, who willingly did all this, and I'm grateful to you, who see this project, because without you this project would have no point in existing. Thank you.”

![Made with ❤️](https://img.shields.io/badge/Feito%20com-%E2%9D%A4-red)

"""

array = [tituloEStts,comoUsarTXT,tecUsa,Contributing,tks,contact]

#########################################


   # r – leitura (padrão).
  #  w – gravação.
 #   a – adição.
#    b – binário.




with open('README.md','w',encoding='utf-8') as w:
    for teste in array:
        w.write(str(teste) + '\n\n')