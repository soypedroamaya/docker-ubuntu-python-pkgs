from src.soypedroamaya.bunit.concept.domain.calculator import sum_numbers, rest_numbers


def test_sum_numbers():
    """
    Descripcion:
        Suma dos numeros enteros
    Ejemplo:
        sum_numbers(4,3) -> 7
    Args:
        a (int): el primer sumando.
        b (int): el segundo sumando.
    Valor(es) de retorno:
        devuelve el resultado de la suma
    Efectos Secundarios:
        la suma de dos numeros, no siempre puede ser positiva,
        si existe la presencia de algun negativo
    Excepcion:
        ninguna
    Restricciones de llamada:
        solo puede ser llamada dentro del contexto domain.

    """
    assert sum_numbers(2, 2) == 4


def test_rest_numbers():
    """
    Descripcion:
        Suma dos numeros enteros
    Ejemplo:
        sum_numbers(4,3) -> 7
    Args:
        a (int): el primer sumando.
        b (int): el segundo sumando.
    Valor(es) de retorno:
        devuelve el resultado de la suma
    Efectos Secundarios:
        la suma de dos numeros, no siempre puede ser positiva,
        si existe la presencia de algun negativo
    Excepcion:
        ninguna
    Restricciones de llamada:
        solo puede ser llamada dentro del contexto domain.

    """
    assert rest_numbers(4, 1) == 3
