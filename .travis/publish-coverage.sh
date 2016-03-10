STABLE_NODE=nvm alias stable | awk '{ print $5; }' | sed -e "s/)//"
CURRENT_NODE=node -v

if [ "$EMBER_TRY_SCENARIO" != "default" ]
then
  echo "Skipping coverage publish for EMBER_TRY_SCENARIO ${EMBER_TRY_SCENARIO}"
  exit 0
fi

if [ "$CURRENT_NODE" != "$STABLE_NODE" ]
then
  echo "Skipping coverage publish for node ${CURRENT_NODE} since it is not stable (${STABLE_NODE})"
  exit 0
fi

cat coverage/lcov.info | coveralls
