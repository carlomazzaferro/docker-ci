set -eoux pipefail

echo "Downloading kfctl for $PLATFORM, version: $KF_VERSION"

RELEASE=$(curl -s https://api.github.com/repos/kubeflow/kfctl/releases |
  jq -r ".[] | select(.name | contains(\"${KF_VERSION}\")) | .assets[] | select(.name | test(\"${PLATFORM}\")) | .browser_download_url")

wget "${RELEASE}" && tar -xvf "${RELEASE##*/}" -C /usr/local/bin && chmod +x /usr/local/bin/kfctl && rm -f "${RELEASE##*/}"
