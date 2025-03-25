write-output "=============================================================================="
write-output "                                      "
write-output "       __    ___  ___   ___  _______	"
write-output "      /  \__/  / /  /  /  / /  ____/  "
write-output "     /        / /  /__/  / /  /__     "
write-output "    /  /\_/  / /  ___   / /  ___/     "
write-output "   /  /  /  / /  /  /  / /  /         "
write-output "  /__/  /__/ /__/  /__/ /__/          "
write-output "                                      "
write-output "======================================"
write-output ""
write-output "Good, let's update your system"
write-output ""

write-output "=== Scoop ==="
write-output ""

scoop update
scoop update *
scoop cleanup *

write-output ""
write-output "=== VS Code plugins ==="
write-output ""

code --update-extensions

write-output ""
write-output "=== WSL ==="
write-output ""

wsl --update --web-download

write-output ""
write-output "Good, we're done"
write-output ""
write-output "=============================================================================="
