#test
def tambah(a, b):
    return a + b

def test_tambah():
    assert tambah(2, 3) == 5
    assert tambah(-1, 1) == 0
