def sumar_paginas(paginas):
    if not paginas:
        return 0
    
    return paginas[0]+ sumar_paginas(paginas[1:])

libros = [200,250,450,120]
total_pagina = sumar_paginas(libros)
print("El total de paginas es:", total_pagina)