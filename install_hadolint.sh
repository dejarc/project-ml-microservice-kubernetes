if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
      sudo chmod +x /bin/hadolint
elif [[ "$OSTYPE" == "darwin"* ]]; then
  brew install hadolint
else
  echo "Please follow installation instructions at https://github.com/hadolint/hadolint"
fi
