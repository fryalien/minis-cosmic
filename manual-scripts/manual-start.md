./pop-apps.sh > >(tee -a install.log)  2> >(tee error.log >&2)


./yourscript.sh \
  > >(tee output.log) \
  2> >(tee error.log >&2)


./yourscript.sh \
  > >(tee -a output.log) \
  2> >(tee -a error.log >&2)
