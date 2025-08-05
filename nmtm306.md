---
layout: page
title: Dějiny matematiky (NMTM306)
permalink: /nmtm306/
---

### Otázka 1 (H): Uveďte nejvýznamnější Archimédovy spisy, které se nacházejí v tzv. Archimédově kodexu

O rovnováze rovinných útvarů, **O plovoucích tělesech I, II**, **Metoda**, O spirálách, O kouli a válci I, II, Měření kruhu, **Stomachion**.

### Otázka 2 (H): Čím se zabývá spis Metoda? Uveďte několik konkrétních výsledků

Obsahy a objemy útvarů vzniklých z kuželoseček. Konkrétněji objem rotačního elipsoidu. Těžiště úseče rotačního paraboloidu.

### Otázka 3 (O): Určete objem úseče tělesa ohraničeného rotačním paraboloidem a rovinou kolmou k jeho ose pomocí Archimédovy metody

![Parabolicka usec](/assets/images/parabolicka-usec.png "Parabolická úseč")

$$ \frac{A\Delta}{A\Sigma} = \frac{B\Delta^2}{\Xi \Sigma^2} $$

$$A\Delta = A\Theta$$ a $$B\Delta = M\Sigma$$, proto $$\frac{A\Theta}{A\Sigma} = \frac{M\Sigma^2}{\Xi \Sigma^2} = \frac{\text{kruh }MN}{\text{kruh } \Xi O}$$.

$$A \Theta \cdot$$ kruh $$\Xi O$$ v paraboloidu $$= A \Sigma \cdot$$ kruh $$MN$$ ve válci.

Válec na místě (v K) vyváží paraboloid v $$\Theta$$.

Tedy je těleso v rovnováze a platí, že objem paraboloidu je polovina opsaného válce.


### Otázka 4 (O): Určete těžiště úseče tělesa ohraničeného rotačním paraboloidem a rovinou kolmou k jeho ose pomocí Archimédovy metody

Užijeme předchozí nákres. 

$$ \frac{A\Delta}{A\Sigma} = \frac{B\Delta^2}{B\Delta \cdot \Pi\Sigma} $$

Z toho plyne, že:

$$ \Sigma\Xi^2 = B\Delta \cdot \Pi\Sigma $$

$$ \frac{B\Delta}{\Pi\Sigma} = \frac{\Sigma\Xi^2}{\Pi\Sigma^2} = \frac{\text{kruh v paraboloidu}}{\text{kruh v kuželu}} $$

$$A\Theta \cdot \text{kruh v kuželu} = A\Sigma \cdot \text{kruh v paraboloidu} $$

$$ \frac{A\Theta}{AT} = \frac{\text{paraboloid}}{\text{kužel}} = \frac{3}{2} $$

Z toho vyplývá, že těžiště je ve dvou třetinách parabolické úseče.

### Otázka 5 (O): Určete objem koule pomocí Archimédovy metody.

![Objem koule](/assets/images/koule.png "Objem koule")

$$ M\Sigma \cdot \Sigma\Pi = \Gamma A \cdot A\Sigma = A\Xi^2 = \Xi\Sigma^2 + \Sigma\Pi^2 $$

$$ \frac{A\Theta}{A\Sigma} = \frac{M\Sigma}{\Sigma\Pi} = \frac{M\Sigma^2}{M\Sigma \cdot \Sigma\Pi} = \frac{M\Sigma^2}{\Xi\Sigma^2 + \Sigma\Pi^2} $$

$$ \frac{A\Theta}{A\Sigma} = \frac{\text{kruh ve válci}}{\text{kruh v kouli} + \text{kruh v kuželu}} $$

Jelikož $$A\Theta = 2 AH$$, pak platí, že

$$2 = \frac{\text{válec}}{\text{koule} + \text{kužel}} $$

Jelikož se válec objemem rovná $$4 \times$$ objem válci opsanému dané kouli, a to 24 vepsaným kuželům, pak platí, že koule je rovna 4 vepsaným kuželům. Z toh plyne, že objem koule je $$\frac{4}{3}\pi r^3$$.

### Otázka 6 (H): O čem pojednává spis Stomachion?

O řecké skládačce a o tom, že některé části mají rozdílné úhly apod.

### Otázka 7 (O): Stručně naznačte školské odvození vztahu pro objem koule pomocí Cavalieriho principu.

Mějme polokouli o poloměru $$R$$ a válec s vyřízlým kuželem o poloměru a výšce $$R$$. Plocha řezu kolmého na výšku je nějaký kruh, přičemž platí, že $$r = \sqrt{R^2 - v^2}$$. Z toho plyne, že jeho obsah je $$\pi r^2 = \pi (R^2 - v^2)$$. Obsah řezu druhého tělesa je roven obsahu mezikruží o obsahu $$\pi R^2 - \pi v^2 = \pi (R^2 - v^2)$$. Tedy dle Cavalieriho principu mají obě tělesa stejný objem. Z toho vyplývá, že objem polokoule je roven $$\frac{2}{3} \pi R^3$$ a tedy, že příslušná koule má objem $$\frac{4}{3} \pi R^3$$, což je hledaný vztah.

### Otázka 8 (V): Jak vznikl název funkce sinus, kosinus?

Původní jméno sinu je *jya*, tedy polovina tětivy. Arabové to přejali jako *jiba*, poté změněno na *jaib*, tedy záliv. Následně to bylo přeloženo jako *sinus* v latině.

Kosinus je komplementární funkcí sinu, tedy proto předpona *ko-*.

### Otázka 9 (V): Stručně vysvětlete, jak vytvořil Ptolemaios svou tabulku délek tětiv

Odvodil velikost $$\text{crd } 60°$$ a $$\text{crd } 72°$$. Následně pomocí součtových vzorců určil $$\text{crd } \frac{3}{2}°$$. Poté provedl aproximaci k určení $$\text{crd } 1°$$. Potom sestrojil všechny náslobky $$\frac{3}{2}°$$ do $$180°$$ a přičemž udělal $$\pm \text{ crd } \frac{1}{2}°$$ pro každou hodnotu, čímž zamezil komulaci chyby vzniklé aproximací.

### Otázka 10 (OV): Inspirujte se Ptolemaiovým postupem vytvoření tabulky délek tětiv a vyjádřete cos 15° pomocí známé hodnoty cos 30°. Postupujte jednoduše: tak, jak byste postupovali ve škole na tabuli, tj. odvoďte ze vzorce pro cos 2α vzorec pro cos α/2 (vyjádření pomocí cos α) a dosaďte hodnotu cos 30° (tu také odvoďte).

Nejprve odvodíme vztah pro polovinu úhlu:

$$ \cos{2\alpha} = \cos{\alpha}^2 - \sin{\alpha}^2 = 2\cos{\alpha}^2 - 1 $$

$$\cos{\alpha}^2 = \frac{1 + \cos{2\alpha}}{2} $$

$$\cos{\alpha} = \pm \sqrt{\frac{1 + \cos{2\alpha}}{2}} $$

Nyní se podíváme na $$\cos{30°}$$. Podívejme se do rovnostranného trojúhelníku. V něm platí, že každý úhel má $$60°$$. Když spustíme výšku, tak u vrcholu bude úhel $$30°$$. Pokud má trojúhelník délku stran $$1$$, pak platí, že $$\cos{30°} = \frac{\sqrt{3}}{2}$$. Pokud dosadíme do vzorce výše, dostaneme:

$$\cos{15°} = \sqrt{\frac{1 + \frac{\sqrt{3}}{2}}{2}} = \sqrt{\frac{2 + \sqrt{3}}{4}} $$

### Otázka 11 (V): Vysvětlete, jakým způsobem Árjabhata zakódoval tabulku hodnot funkce sinus do dvou řádků své básně.

Rozdělil kružnici na 21600 dílků, přičemž jeden dílek odpovídá naší jedné minutě. První kvadrant rozdělil na 24 dílků. První hodnota odpovídá velikosti sinu jednoho dílku. Každý následující odpovídá velikosti sinu n-tého dílku minus sinus (n-1)-tého dílku.

### Otázka 12 (OV): Jak vypočítal al-Káší hodnotu sin 1°? Odvoďte jeho postup.

Al-Káší vychází ze známého vzorce $$\sin{3\alpha} = 3 \sin{\alpha} - 4 \sin{\alpha}^2$$. Přičemž $$x = \sin{1°}$$, címž dostává $$x = \frac{4x^3 + \sin{3°}}{3}$$, z čehož udělá iterační předpis a $$x_0 = \frac{1}{60}$$. Pokračoval tak dlouho, dokud neměl požadovanou přesnost.

### Otázka 13 (O): Stručně shrňte podstatu algoritmu CORDIC. Kdo a kdy jej objevil?

Algoritmus vznikl roku 1959, kdy jej vymyslel Jack Volder. CORDIC je založený na součtovém vzorce pro tangens. V paměti máme uloženy hodnoty úhlů, pro které platí, že $$\tan{\alpha _i} = 2^{-i}$$. Hledaný úhel si pak napíšeme jako ciferný součet. Výsledek je pak:

$$ \tan{\alpha} = \tan{\sum^n_{i=0} \alpha _i} $$

Použijeme součtový vzorec pro tangens:

$$ \tan{\alpha _i + \alpha _j} = \frac{\tan{\alpha _i} + \tan{\alpha _j}}{1 - \tan{\alpha _i} \cdot \tan{\alpha _j}} $$

Když $$\tan{\beta} = \frac{y}{x}$$ a $$\tan{\beta + \alpha _i} = \frac{y'}{x'}$$, tak dostaneme, že $$y' = y + x \tan{\alpha _i}$$, $$x' = x - y \tan{\alpha _i}$$. Úplně na závěr to podělíme a dostaneme hledaný výsledek. 

### Otázka 14 (V): Řešení jakých otázek vedlo k objevu goniometrie?

Primárně se jedná o problémy astronomie, konkrétně o pohyby planet po obloze. V dobách starověkého Egypta se také kvůli stavbě pyramid řešil jejich sklon.

### Otázka 15 (H): Co je excentr? Co je deferent a epicykl?

Mějme model obíhání Slunce kolem Země. Excentr je oběžná dráha, kdy střed obíhání je mimo střed Země. Druhý model kombinuje hlavní kružnici se středem ve středu Země (deferent) s menší kružnicí, kolem které Slunce obíhá (epicykl).

### Otázka 16 (V): Stručně vysvětlete základní princip, na němž byly založeny první tabulky logaritmů, vysvětlete také volbu základů blízkých 1.

Bylo to prosté přiřazování přirozených čísel k jejich logaritmům o vhodném základě.

Volíme základ blízký jedné, aby byla tabulka dostatečně hustá. V případě volby většího exponentu bude tabulka řídká, jelikož posloupnost brzy začne velmi rychle růst. Z podobného důvodu volíme také základ menší než jedna.

### Otázka 17 (V): Jak počítal Napier tabulky logaritmů?

Zvolil základ $$1 - 10^{-7}$$. Aby si ulehčil práci, všiml si, že se výsledné hodnoty od sebe příliš neliší, že vlastně vypadají, jako by to bylo linární a že chyba je řádově zanedbatelná. Tudíž jen psal lineární posloupnost a kontroloval, zda mu někde nenarůstá příliš velká chyba.

### Otázka 18 (O): Odvoďte postup výpočtu ln 3 pomocí odmocnin.

Napišme $$\sqrt[n]{3} = 1 + \epsilon _n$$ a $$\sqrt[n]{e} \approx 1 + \frac{1}{n}$$. Z definice $$\ln{3} = y$$ platí $$3 = e^y$$. Na tento tvar aplikujeme n-tou odmocninu:

$$ \sqrt[n]{3} = (\sqrt[n]{e})^y $$

Z toho plyne, že

$$ 1 + \epsilon _n \approx \left( 1 + \frac{1}{n}\right) ^y = 1 + y \cdot \frac{1}{n} + o(y) $$

Z toho vyvodíme, že $$y \approx n \cdot \epsilon _n = n\cdot(\sqrt[n]{3} - 1)$$. Pomocí tohoto tvaru již můžeme aproximovat daný logaritmus.

### (OV): Proč je logaritmus o základu e přirozený?

Z výpočtu výše plyne, že výpočet logaritmů o základu $$e$$ je jednoduchý, jelikož neobsahuje žádné dělení, které by logaritmy o jiných základech obsahovaly. Algoritmus na rychlé odmocňování je znám již ze starověkého Babylonu a násobení je velmi snadná operace. Pro tuto vlastnost je tudíž "přirozený".

### Otázka 19 (V): Vysvětlete původ slova logaritmus a jak je v něm obsažena matematická podstata logaritmů.

Vychází ze slov *logos* a *arithmos*. První označuje slovo poměr a vyjadřuje geometrickou posloupnost. To druhé vyjadřuje zase aritmetickou posloupnost. Tedy logaritmus je zobrazení z množiny členů geometrické posloupnosti do množiny členů posloupnosti aritmetické.

### Otázka 20 (H): Co mohlo vést ke zkoumání kuželoseček? Uveďte jeden problém z praxe a jeden matematický problém.

Sluneční hodiny a jejich rozumná konstrukce, problém zdvojení krychle.

### Otázka 21 (V): Na základě čeho nazval Apollónios parabolu? Ve kterém spisu to provedl?

Název vychází ze zadání úlohy z Euklidových Základů, kdy k danému čtverci hledáme odpovádající obdélník se stranou délky $$p$$. Tedy $$y^2 = px$$. Řekové tomu říkali přikládání plochy, řecky *paraballó*. Z toho Apollónios odvodil název parabola ve své knize **Kuželosečky**.

### Otázka 22 (O): Jak Apollónios odvodil charakteristickou vlastnost (dnes bychom řekli rovnici) paraboly jako řezu kuželové plochy, na jejímž základě ji také pojmenoval?

![Řez kuželu](/assets/images/rez-kuzelu.png "Řez kuželu")

Z Thalétovy kružnice plyne, že $$\lvert KX \rvert^2 = \lvert MX \rvert \cdot \lvert XN \rvert$$. Jelikož je řez rovnoběžný s přímkou $$AG$$, tak $$\lvert XN \rvert = 
\lvert HG \rvert$$. Z podobnosti trojuhelníků $$VMX$$ a $$VBH$$ plyne $$\frac{\lvert MX \rvert}{\lvert BH \rvert} = \frac{\lvert VX \rvert}{\lvert VH \rvert}$$. Proto:

$$ \lvert KX \rvert^2 = \lvert MX \rvert \cdot \lvert XN \rvert = $$
$$ = \frac{\lvert VX \rvert \cdot \lvert BH \rvert}{\lvert VH \rvert} \cdot \lvert HG \rvert = $$
$$ = \lvert VX \rvert \cdot \frac{\lvert BH \rvert \cdot \lvert HG \rvert}{\lvert VH \rvert} $$

Nyní konstantu $$\frac{\lvert BH \rvert \cdot \lvert HG \rvert}{\lvert VH \rvert}$$ označíme jako $$p$$ a také $$\lvert KX \rvert = y$$ a $$\lvert VX \rvert = x$$. Tedy dostaneme hledaný vztah $$y^2 = px$$.

### Otázka 23 (O): S užitím analytické geometrie ukažte, proč se elipsa nazývá elipsa. Kdo a kdy zavedl tento název?

$$ \frac{(x - a)^2}{a^2} + \frac{y^2}{b^2} = 1 $$

$$y^2 = \frac{2b^2}{a} x - \frac{b^2}{a^2}x^2 $$

Nyní uděláme substituci $$p = \frac{2b^2}{a}$$, po níž se dostaneme k tvaru:

$$ y^2 = px - \frac{p}{2a}x^2 $$

Tento tvar naznačuje, že zde něco "chybí", tedy že od daného obdélníku odečítáme nějaký útvar. Odtud také název elipsa. Takto ji nazval Apollonios z Pergy ve svých Kuželosečkách na  konci 3. stol. př. n. l.

### Otázka 24 (H): Kdo a přibližně kdy napsal první text, z něhož se nám dochovaly významné pasáže, v nichž se pracuje s kuželosečkami?

První práce s kuželosečkami se nám dochovala v zlomcích spisů Řeka jménem **Menaichmos** ve 4. stol. př. n. l.
### Otázka 25 (O): Naznačte podstatu Avicennovy konstrukce paraboly

![Avicenna](/assets/images/avicenna.png "Avicenna konstrukce")

Dle Euklidovy věty víme, že $$v^2 = c_a \cdot c_b$$. Zde platí, že pro každou jednu kružnici s průměrem minimálně $$p$$ platí, že $$y^2 = px$$, což je rovnice paraboly.

### Otázka 26 (O): Jak definoval hyperbolu Menaichmos?

Menaichmos hyperbolu definuje jako křivku v rovině, pro jejíž body platí, že součin vzdáleností od dvou různoběžek je konstantní.

### (V): Jak jeho definice souvisí s nepřímou úměrností?

Tvar $$xy = k$$ se dá snadno převést na $$y = \frac{k}{x}$$, což je nepřímá úměrnost mezi $$x$$ a $$y$$.

### (O): Ukažte, že grafem nepřímé úměrnosti je hyperbola (neboli ukažte, že Menaichmova definice hyperboly skutečně charakterizuje hyperbolu).

Převedeme do jiné báze tedy $$x = x' - y'$$, $$y = x' + y'$$. Nyní dostaneme $$(x' + y')(x' - y') = k$$. Po úpravě dostaneme $$\frac{x'^2}{k} - \frac{y'^2}{k} = 1$$, což rovnice paraboly.

### Otázka 27 (V): Vysvětlete, co je zákon homogenity, kdo jej odstranil a jakým způsobem.

Zákon tvrdí, že nelze poměřovat navzájem různé veličiny, např. objem a obsah. Podle Řeků takové věci neměly v geometrii interpretaci, tudíž byly nepřípustné. Stejně tak bylo problematické povolit polynom stupně vyššího než tři. Odstranil jej Descartes, když prohlásil, že když je třeba dát do poměru objekty stejné dimenze, tak si prostě přikreslíme jedničku.

### Otázka 28 (V): Používal R. Descartes kartézskou soustavu souřadnic? Měl dvě na sebe kolmé osy se stejnou jednotkou na každé z nich?

Používal trochu jiný systém. Měl pouze jednu osu, od které počítal vzdálenost. Až později byla přidána druhá kolmá osa.

### Otázka 29 (V): Jak vznikl název matematické analýzy, přesněji: proč analýza?

Původně to označovalo cokoliv, kde se neznámá veličina nějak označila a pracovalo se s ní, jako bychom ji znali. Tento název se používal pro algebru. Vlivem Newtona se označení přeneslo i na infinitezimální počet. Později v 18. a 19. století se toto označení začalo používat pouze dnešním způsobem.