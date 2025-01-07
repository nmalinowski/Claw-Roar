# Claw & Roar - A Dinosaur Card Battle Game

A Dinosaur Card Battle game I am creating with my son Jordyn, using the [Gamemaker Studio](https://gamemaker.io/)

# Concept and Rules

### Game Structure
**Dino Cards**: These are the main creatures in the game. Each Dino Card represents a different species of dinosaur with unique abilities and attributes such as attack power, defense, and special skills.

    - Tyrannosaurus rex – The iconic apex predator of the Late Cretaceous.
        - 6/6 - Bone-Crushing Bite
    - 3x Velociraptor – Small, fast, and intelligent.
        - 3/2 - Razor Claws
    - 2x Triceratops – A three-horned ceratopsian with a massive frill.
        - 4/6 - Stand Together
    - Stegosaurus – Known for its back plates and spiked tail.
        - 3/5 - Stand Together
    - Brachiosaurus – A towering, long-necked sauropod.
        - 2/8 - Behemoth, Thicker Scales
    - Spinosaurus – A semi-aquatic predator with a sail-like spine.
        - 7/7 - Razor Teeth
    - Allosaurus – A large Jurassic predator, often seen as a precursor to T. rex.
        - 5/5
    - Ankylosaurus – A heavily armored herbivore with a clubbed tail.
        - 2/3 - Crushing Force
    - Pteranodon – Technically a pterosaur (not a dinosaur).
        - 2/1 - Flying
    - 2x Iguanodon – One of the first dinosaurs ever discovered, known for its thumb spike.
        - 2/2
    - 2x Diplodocus – A long-necked sauropod famous for its whip-like tail.
        - 2/5
    - Carnotaurus – A fast predator with short arms and horned skull.
        - 4/3
    - Pachycephalosaurus – Known for its thick, domed skull.
        - 3/2 - Crushing Force
    - 2x Parasaurolophus – A hadrosaur with a long, curved crest.
        - 2/2
    - Therizinosaurus – A bizarre herbivore with long claws.
        - 5/3 - Razor Claws
    - Deinonychus – A larger relative of Velociraptor, highly influential in raptor depictions.
        - 4/3 - Razor Claws
    - Styracosaurus – A ceratopsian with large spikes around its frill.
        - 5/7 - Crushing Force, Thicker Scales
    - Giganotosaurus – One of the largest carnivores, rivaling T. rex.
        - 7/7 - Razor Teeth
    - Carcharodontosaurus – A massive theropod from Africa.
        - 5/5 
    - 2x Oviraptor – A small, bird-like dinosaur thought to steal eggs.
        - 2/1
    - Albertosaurus – A smaller cousin of T. rex from Canada.
        - 4/4
    - 2x Coelophysis – One of the earliest known dinosaurs.
        - 2/1 
    - 2x Microraptor – A feathered, four-winged dinosaur.
        - 2/1 - Flying, Razor Claws
    - Utahraptor – The largest dromaeosaur (raptor) known.
        - 5/3 - Razor Claws
    - Quetzalcoatlus – One of the largest flying animals ever.
        - 6/3 - Flying

**Evolution Cards**: These cards can be played to enhance the abilities of Dino Cards in play, these may help you, but they may also help your opponent.

    - 3x Sharpened Claws
    - 3x Sharpened Teeth
    - 2x Savage Maw
    - 4x Colossal Impact
    - 3x Toxic Bite
    - 5x Armored Carapace
    - 5x Strength in Numbers

### Mechanics
- **Setup**: Each Deck is 60 cards, 25 Evolution cards and 35 Dino cards. The deck is thouroghly shuffled. Each player takes draws 5 cards from the deck. If you draw a hand with 2 or less Dino cards you may reshuffle your hand into the deck and redraw 5 cards. Each Player starts with 25 health, and 10 resistance counters.

- **Turns**: Each player, including the AI opponent, takes turns drawing cards and playing them. A turn involves drawing one card, playing one Dino Card, and optionally using one Evolution or Event Card.
    - Phase 1: Draw
    - Phase 2: Play a Event Card or a Dino Card
    - Phase 3: Battle! Choose which of your Dinos will Attack, if any, and which will stay on the Defensive!
    - Phase 4: Discard extra cards if you have more than 5.

- **Battle System**: During the Battle phase of a players turn, that play may choose to have Dino cards in play attack the opponent. The defending player can choose to block the damage with a Dino card they have in play. 

    - Players Start with 25 Health and 10 Resistance Counters.
    - If a player's health or resistance counters reach, that player loses the game.
    - Dino Cards have Attack Power and Defensive Power. Illistrated as X/X (AP/DP).
        - Ex. 2/5, This would represent the Attack Power of 2, and the Defensive Power of 5.
    - 1 Defending Dino Card can only block 1 Attacking Dino Card, unless the Defending Dino Card has an ability that allows them to block more than 1.
    - The Attacking Dino Card is represented by turning the card horizontally, also known as "tapping". Tapped Dino Cards untap at the beginning of your turn.
    - Dino cards that have the `Razor Claws` ability, `Razor Teeth` ability, `Bone-Crushing Bite` ability, or the `Crushing Force` ability or evolved the `Sharpened Claws` ability, `Sharpened Teeth` ability, `Savage Maw` ability or the `Colossal Impact` ability deal remaining damage that the defending Dino card can't block to the defending player. Dino Cards that possess one of these abilties cannot evolve to possess another ability.
        - Ex. If the Attacking Dino Card have an AP/DP of 6/6 and the Defending Dino Card has an AP/DP of 3/5, the Defending Dino Card dies and the Defending player will take 1 Health point of damage.
    - Dino Cards that have the `Bacteria-Laden Bites` ability or evolved the `Toxic Bite` ability deal damage to the Resistance counters instead of your Health Pool. If a Dino card already has `Bacteria-Laden Bites` and an Evolution occurs that would grant it `Toxic Bite`, that Dino Card deals +1 extra damage to the resistance counters with each attack.
    - Dino Cards that have the `Thicker Scales` ability or evolved the `Armored Carapace` ability are immune to the `Razor Claws`, `Razor Teeth` and `Crushing Force` abilites.
    - Dino Cards that have the `Stand Together` ability or evolved the `Strength in Numbers` ability can block up to 3 attacking Dino cards. If a Dino card already has `Stand Together` and an Evolution occurs that would grant it `Strength in Numbers`, that Dino Card can now absorb all damage from all Dino cards it blocks (maximum of 3). If the damage is more that the toughness of the Dino Card, the Dino Card dies, but the remaining damage is null.
    - Dino Cards that have the `Flying` ability can only be blocked by Dino Cards that also have the `Flying` ability, or Dino Cards that have the `Behemoth` ability. This ability cannot be evolved.
    - Dino Cards with the `Behemoth` ability can block creatures with the `Flying` ability. This ability cannot be evolved.

### Winning Conditions
- **Objective**: The main goal could be to reduce the opponent's Health or Reduce their Resistance Counters to zero by battling their dinos.
