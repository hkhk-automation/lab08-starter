from app import app


def test_avaleht_vastab():
    vastus = app.test_client().get("/")
    assert vastus.status_code == 200
    assert "Tere" in vastus.get_data(as_text=True)


def test_health_vastab_ok():
    vastus = app.test_client().get("/health")
    assert vastus.status_code == 200
    assert vastus.get_json() == {"status": "ok"}


def test_olematu_leht_404():
    vastus = app.test_client().get("/olematu")
    assert vastus.status_code == 404


def test_versioon_vaikimisi_kohalik():
    vastus = app.test_client().get("/versioon")
    assert vastus.get_data(as_text=True) == "kohalik"
