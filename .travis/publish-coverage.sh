STABLE_NODE=nvm alias stable | awk '{ print $5; }' | sed -e "s/)//"
CURRENT_NODE=node -v

if [ "$EMBER_TRY_SCENARIO" = 'default' && "$CURRENT_NODE" = "$STABLE_NODE" ]
then
  cat coverage/lcov.info | coveralls
fi
