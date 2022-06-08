var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:fkcarro", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});

router.get("/tempo-real/:fkcarro", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
});
router.post("/tempo-real", function (req, res) {
    medidaController.Atualizarmedida(req, res);
  });

module.exports = router;