/// @description atk_back

if (!moving(xpre, ypre, SPEED)) {
	next_unit();
	change_state(ZOMBIE.wait);
}
