#  @State 
Если элемент интерфейса должен иметь зависимость от свойства, то это свойство необходимо помечать как @State свойство. Данная обертка позволяет установить двухстороннюю связь между элементом интерфейса и связанным с ним свойством.

Все State переменные должны быть приватными так как являются свойствами самого типа.

По умолчанию переменная доступна только для чтения. Для того, чтобы получить возможность изменять значение свойство, необходимо передавать его через символ $.

Жизненный цикл данного свойства зависит от жизненного цикла связанного с ним представления.
