import random

# Soldier


class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    
    def attack(self):
        return self.strength

    def receiveDamage(self, damage):
        self.health -= damage
    

# Viking

class Viking(Soldier):
    def __init__(self, name, health, strength):
        self.name = name
        Soldier.__init__(self, health, strength)

    def attack(self):
        print("Odin Owns You All!")
        return super().attack()

    def battleCry(self):
        return "Odin Owns You All!"

    def receiveDamage(self, damage):
        super().receiveDamage(damage)
        if self.health > 0:
            return f"{self.name} has received {damage} points of damage"
        else:
            return f"{self.name} has died in act of combat"


# Saxon

class Saxon(Soldier):
    def __init__(self, health, strength):
        super().__init__(health, strength)

    def receiveDamage(self, damage):
        super().receiveDamage(damage)
        if self.health > 0:
            return f"A Saxon has received {damage} points of damage"
        else:
            return f"A Saxon has died in combat"


# Davicente

class War():
    def __init__(self):
        self.vikingArmy = list()
        self.saxonArmy = list()

    def addViking(self, viking):
        self.vikingArmy.append(viking)
    
    def addSaxon(self, saxon):
        self.saxonArmy.append(saxon)
    
    def vikingAttack(self):
        vi = random.randint(0, len(self.vikingArmy)-1)
        va = self.vikingArmy[vi].attack()

        si = random.randint(0, len(self.saxonArmy)-1)
        s = self.saxonArmy[si]

        x = s.receiveDamage(va)

        if s.health <= 0:
            self.saxonArmy.pop(si)
        
        return x
        
    
    def saxonAttack(self):
        si = random.randint(0, len(self.saxonArmy)-1)
        sa = self.saxonArmy[si].attack()

        vi = random.randint(0, len(self.vikingArmy)-1)
        v = self.vikingArmy[vi]

        x = v.receiveDamage(sa)

        if v.health <= 0:
            self.vikingArmy.pop(si)
        
        return x

    def showStatus(self):
        x = ''
        if len(self.saxonArmy) == 0:
            x = 'Vikings have won the war of the century!'
        elif len(self.vikingArmy) == 0:
            x = 'Saxons have fought for their lives and survive another day...'
        else:
            x = 'Vikings and Saxons are still in the thick of battle.'
        
        return x

#yop
class War2:

    def __init__(self):
        # your code here
        pass

    def addViking(self, Viking):
        # your code here
        pass
    
    def addSaxon(self, Saxon):
        # your code here
        pass
    
    def vikingAttack(self):
        # your code here
        pass

    def saxonAttack(self):
        # your code here
        pass

    def showStatus(self):
        # your code here
        pass


