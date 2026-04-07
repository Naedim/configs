# Java configuration
# JAVA_HOME targets Java 11 for project builds, fallback to default if not installed.
# jdtls (nvim LSP) uses the highest available Java separately — see nvim/lua/plugins/java.lua
export JAVA_HOME="$(/usr/libexec/java_home -v 11 2>/dev/null || /usr/libexec/java_home 2>/dev/null)"
[ -n "$JAVA_HOME" ] && export PATH="$JAVA_HOME/bin:$PATH"
