for index in find -name "_index.md"; do
  MOD_DIR=$(dirname "${index}")
  MOD_NAME=$(basename "${MOD_DIR}")
  cd "${MOD_DIR}"
  pandoc _index.md -o "${MOD_NAME}.pdf"
  cd -
done
