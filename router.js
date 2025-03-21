const httpStatus = require("http-status");
const checkAuth = require("./middlewares/checkAuth");
const router = require("express").Router();
const usersController = require("./controllers/users.controller");

router.post("/login", usersController.login);
// router.get("/users", usersController.getUsers);
router.post("/register", usersController.register);
router.get("/me", checkAuth, (req, res) => {
  res.status(httpStatus.OK).send({ userid: req.userid });
});
module.exports = router;
